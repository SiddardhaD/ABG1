import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/theme_provider.dart';
import '../shared/app_shell.dart';
import 'location_availability_inquiry_router.dart';

/// Entry point for the Location Availability Inquiry app.
class LocationAvailabilityInquiryApp extends ConsumerWidget {
  const LocationAvailabilityInquiryApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(locationAvailabilityInquiryRouterProvider);
    final themeMode = ref.watch(themeControllerProvider);

    return AppShell(
      title: 'Location Availability Inquiry',
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
