import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble_broadcast_state.freezed.dart';

enum BleBroadcastStatus {
  /// Adapter state not yet resolved.
  unknown,

  /// This device has no BLE peripheral/advertising support.
  unsupported,

  /// Bluetooth is off — user needs to turn it on.
  poweredOff,

  /// Bluetooth permission wasn't granted.
  unauthorized,

  /// Adapter is on, ready to advertise.
  idle,

  /// Advertising, but no desktop has subscribed to notifications yet.
  advertising,

  /// A desktop central subscribed to the TX characteristic — ready to send.
  connected,
}

/// State for the BLE peripheral broadcast feature, driven by
/// [BleBroadcastController].
@freezed
class BleBroadcastState with _$BleBroadcastState {
  const factory BleBroadcastState({
    @Default(BleBroadcastStatus.unknown) BleBroadcastStatus status,
    @Default('') String errorMessage,
    @Default(false) bool isSending,
    String? lastSentPayload,
  }) = _BleBroadcastState;

  const BleBroadcastState._();

  bool get isAdvertising =>
      status == BleBroadcastStatus.advertising || status == BleBroadcastStatus.connected;
  bool get isConnected => status == BleBroadcastStatus.connected;
  bool get canStartAdvertising => status == BleBroadcastStatus.idle;
}
