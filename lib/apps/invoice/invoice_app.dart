import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/theme_provider.dart';
import '../shared/app_shell.dart';
import 'invoice_router.dart';

/// Entry point for the Invoice app.
class InvoiceApp extends ConsumerWidget {
  const InvoiceApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(invoiceRouterProvider);
    final themeMode = ref.watch(themeControllerProvider);

    return AppShell(
      title: 'Invoice',
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
