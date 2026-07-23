import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/theme_provider.dart';
import '../shared/app_shell.dart';
import 'grn_to_print_router.dart';

/// Entry point for the GRN to Print app.
class GrnToPrintApp extends ConsumerWidget {
  const GrnToPrintApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(grnToPrintRouterProvider);
    final themeMode = ref.watch(themeControllerProvider);

    return AppShell(
      title: 'GRN to Print',
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
