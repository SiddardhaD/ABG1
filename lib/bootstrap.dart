import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import 'app.dart';
import 'core/config/app_flavor.dart';
import 'core/config/app_flavor_provider.dart';

Future<void> bootstrapApp(AppFlavor flavor) async {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.loggerName}: ${record.message}');
  });

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(
        ProviderScope(
          overrides: [appFlavorProvider.overrideWithValue(flavor)],
          child: const App(),
        ),
      );
    },
    (error, stack) => Logger('main').severe('Uncaught zone error', error, stack),
  );
}
