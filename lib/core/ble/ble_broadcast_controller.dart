import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bluetooth_low_energy/bluetooth_low_energy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'ble_broadcast_state.dart';
import 'ble_constants.dart';

part 'ble_broadcast_controller.g.dart';

/// Drives BLE peripheral broadcasting to a desktop companion app.
///
/// Advertises a single GATT service (Nordic UART "TX" characteristic, see
/// [BleConstants]) and pushes barcode strings to it via notify once a
/// central (the desktop) has subscribed. Peripheral mode is foreground-only
/// by design — nothing here keeps advertising alive in the background, and
/// [stopAdvertising] runs automatically on dispose.
@Riverpod(keepAlive: true)
class BleBroadcastController extends _$BleBroadcastController {
  late final PeripheralManager _manager;
  StreamSubscription<BluetoothLowEnergyStateChangedEventArgs>? _stateSubscription;
  StreamSubscription<GATTCharacteristicNotifyStateChangedEventArgs>? _notifySubscription;
  StreamSubscription<CentralConnectionStateChangedEventArgs>? _connectionSubscription;

  GATTCharacteristic? _txCharacteristic;
  Central? _connectedCentral;

  @override
  BleBroadcastState build() {
    _manager = PeripheralManager();

    _stateSubscription = _manager.stateChanged.listen(
      (args) => _applyAdapterState(args.state),
    );
    _notifySubscription = _manager.characteristicNotifyStateChanged.listen(
      _onNotifyStateChanged,
    );
    // connectionStateChanged is Android-only (throws UnsupportedError just
    // accessing the getter elsewhere) — a defensive extra disconnect signal
    // there; characteristicNotifyStateChanged alone already covers every
    // platform for the "central unsubscribed" case.
    if (Platform.isAndroid) {
      _connectionSubscription = _manager.connectionStateChanged.listen(
        _onConnectionStateChanged,
      );
    }

    ref.onDispose(() {
      _stateSubscription?.cancel();
      _notifySubscription?.cancel();
      _connectionSubscription?.cancel();
      unawaited(_manager.stopAdvertising());
    });

    unawaited(_applyAdapterState(_manager.state));
    return const BleBroadcastState();
  }

  Future<void> _applyAdapterState(BluetoothLowEnergyState adapterState) async {
    switch (adapterState) {
      case BluetoothLowEnergyState.unsupported:
        state = state.copyWith(status: BleBroadcastStatus.unsupported);
      case BluetoothLowEnergyState.poweredOff:
        state = state.copyWith(status: BleBroadcastStatus.poweredOff);
      case BluetoothLowEnergyState.unauthorized:
        state = state.copyWith(status: BleBroadcastStatus.unauthorized);
        if (Platform.isAndroid) {
          await _manager.authorize();
        }
      case BluetoothLowEnergyState.poweredOn:
        // Don't downgrade an active advertising/connected session just
        // because the adapter reports "on" again mid-session.
        if (!state.isAdvertising) {
          state = state.copyWith(status: BleBroadcastStatus.idle);
        }
      case BluetoothLowEnergyState.unknown:
        state = state.copyWith(status: BleBroadcastStatus.unknown);
    }
  }

  void _onNotifyStateChanged(GATTCharacteristicNotifyStateChangedEventArgs args) {
    if (args.characteristic.uuid != BleConstants.txCharacteristicUuid) return;

    if (args.state) {
      _connectedCentral = args.central;
      state = state.copyWith(status: BleBroadcastStatus.connected, errorMessage: '');
    } else if (_connectedCentral?.uuid == args.central.uuid) {
      _connectedCentral = null;
      if (state.status == BleBroadcastStatus.connected) {
        state = state.copyWith(status: BleBroadcastStatus.advertising);
      }
    }
  }

  void _onConnectionStateChanged(CentralConnectionStateChangedEventArgs args) {
    if (_connectedCentral?.uuid != args.central.uuid) return;
    if (args.state == ConnectionState.disconnected) {
      _connectedCentral = null;
      if (state.status == BleBroadcastStatus.connected) {
        state = state.copyWith(status: BleBroadcastStatus.advertising);
      }
    }
  }

  Future<void> startAdvertising() async {
    if (state.isAdvertising) return;
    if (_manager.state != BluetoothLowEnergyState.poweredOn) {
      await _applyAdapterState(_manager.state);
      return;
    }

    try {
      await _manager.removeAllServices();
      final characteristic = GATTCharacteristic.mutable(
        uuid: BleConstants.txCharacteristicUuid,
        properties: [GATTCharacteristicProperty.notify],
        permissions: [GATTCharacteristicPermission.read],
        descriptors: [],
      );
      _txCharacteristic = characteristic;
      await _manager.addService(
        GATTService(
          uuid: BleConstants.serviceUuid,
          isPrimary: true,
          includedServices: [],
          characteristics: [characteristic],
        ),
      );
      // The service UUID must be in the advertisement packet itself (not
      // just discoverable after connecting) — the desktop scans with a
      // service-UUID filter and won't see the device otherwise.
      await _manager.startAdvertising(
        Advertisement(
          name: 'ABG Order to be Shipped',
          serviceUUIDs: [BleConstants.serviceUuid],
        ),
      );
      state = state.copyWith(status: BleBroadcastStatus.advertising, errorMessage: '');
    } catch (e) {
      state = state.copyWith(errorMessage: 'Could not start advertising: $e');
    }
  }

  /// Opens the OS Bluetooth/app settings screen, e.g. so the user can grant
  /// the permission this app was denied or turn Bluetooth on. Available on
  /// Android and iOS; a no-op elsewhere.
  Future<void> openSettings() async {
    if (!Platform.isAndroid && !Platform.isIOS) return;
    try {
      await _manager.showAppSettings();
    } catch (_) {
      // Best-effort — nothing more we can do if the OS refuses.
    }
  }

  Future<void> stopAdvertising() async {
    if (!state.isAdvertising) return;
    try {
      await _manager.stopAdvertising();
      await _manager.removeAllServices();
    } finally {
      _connectedCentral = null;
      _txCharacteristic = null;
      state = state.copyWith(status: BleBroadcastStatus.idle);
    }
  }

  /// Sends [payload] to the connected desktop, newline-terminated per the
  /// desktop's line-buffered protocol. Returns true on success; false (with
  /// `state.errorMessage` set) if nobody's subscribed to receive it.
  Future<bool> send(String payload) async {
    final central = _connectedCentral;
    final characteristic = _txCharacteristic;
    if (central == null || characteristic == null) {
      state = state.copyWith(errorMessage: 'No desktop connected — nothing to send to.');
      return false;
    }

    state = state.copyWith(isSending: true, errorMessage: '');
    try {
      final bytes = Uint8List.fromList(utf8.encode('$payload\n'));
      await _manager.notifyCharacteristic(central, characteristic, value: bytes);
      state = state.copyWith(isSending: false, lastSentPayload: payload);
      return true;
    } catch (e) {
      state = state.copyWith(isSending: false, errorMessage: 'Send failed: $e');
      return false;
    }
  }
}
