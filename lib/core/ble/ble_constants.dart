import 'package:bluetooth_low_energy/bluetooth_low_energy.dart';

/// GATT UUIDs for broadcasting scanned barcodes to a desktop companion app
/// over BLE. These are the standard Nordic UART Service "TX" UUIDs — a
/// de facto standard for serial-over-BLE — and MUST match the desktop
/// side's `lib/constants/bluetooth_constants.dart` exactly; they are not
/// arbitrary and must not be changed independently.
class BleConstants {
  BleConstants._();

  static final UUID serviceUuid = UUID.fromString('6e400001-b5a3-f393-e0a9-e50e24dcca9e');
  static final UUID txCharacteristicUuid = UUID.fromString('6e400003-b5a3-f393-e0a9-e50e24dcca9e');
}
