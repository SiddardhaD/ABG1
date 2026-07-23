import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/theme_provider.dart';
import '../shared/app_shell.dart';
import 'order_to_be_picked_router.dart';

/// Entry point for the Order to be Picked app.
class OrderToBePickedApp extends ConsumerWidget {
  const OrderToBePickedApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(orderToBePickedRouterProvider);
    final themeMode = ref.watch(themeControllerProvider);

    return AppShell(
      title: 'Order to be Picked',
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
