import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/theme_provider.dart';
import '../shared/app_shell.dart';
import 'delivery_note_print_router.dart';

/// Entry point for the Delivery Note Print app.
class DeliveryNotePrintApp extends ConsumerWidget {
  const DeliveryNotePrintApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(deliveryNotePrintRouterProvider);
    final themeMode = ref.watch(themeControllerProvider);

    return AppShell(
      title: 'Delivery Note Print',
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
