import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/theme_provider.dart';
import '../shared/app_shell.dart';
import 'order_to_be_shipped_router.dart';

/// Entry point for the Order to be Shipped app.
class OrderToBeShippedApp extends ConsumerWidget {
  const OrderToBeShippedApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(orderToBeShippedRouterProvider);
    final themeMode = ref.watch(themeControllerProvider);

    return AppShell(
      title: 'Order to be Shipped',
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
