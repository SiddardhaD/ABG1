import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/theme_provider.dart';
import '../shared/app_shell.dart';
import 'po_to_receive_router.dart';

/// Entry point for the PO to Receive app.
class PoToReceiveApp extends ConsumerWidget {
  const PoToReceiveApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(poToReceiveRouterProvider);
    final themeMode = ref.watch(themeControllerProvider);

    return AppShell(
      title: 'PO to Receive',
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
