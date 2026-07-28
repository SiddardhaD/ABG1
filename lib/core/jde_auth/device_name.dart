import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

/// A human-readable identifier for this physical device, sent as
/// `deviceName` on JDE login/logout (e.g. "Zebra TC21" or "iPhone 14").
Future<String> resolveDeviceName() async {
  final plugin = DeviceInfoPlugin();
  try {
    if (Platform.isAndroid) {
      final info = await plugin.androidInfo;
      return '${info.manufacturer} ${info.model}'.trim();
    }
    if (Platform.isIOS) {
      final info = await plugin.iosInfo;
      return info.utsname.machine;
    }
  } catch (_) {
    // Fall through to the generic fallback below.
  }
  return Platform.operatingSystem;
}
