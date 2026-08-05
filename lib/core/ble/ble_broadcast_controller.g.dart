// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_broadcast_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bleBroadcastControllerHash() =>
    r'36c287a4f0ce9efedfd7f81076a0ad333fb72dd6';

/// Drives BLE peripheral broadcasting to a desktop companion app.
///
/// Advertises a single GATT service (Nordic UART "TX" characteristic, see
/// [BleConstants]) and pushes barcode strings to it via notify once a
/// central (the desktop) has subscribed. Peripheral mode is foreground-only
/// by design — nothing here keeps advertising alive in the background, and
/// [stopAdvertising] runs automatically on dispose.
///
/// Copied from [BleBroadcastController].
@ProviderFor(BleBroadcastController)
final bleBroadcastControllerProvider =
    NotifierProvider<BleBroadcastController, BleBroadcastState>.internal(
      BleBroadcastController.new,
      name: r'bleBroadcastControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$bleBroadcastControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$BleBroadcastController = Notifier<BleBroadcastState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
