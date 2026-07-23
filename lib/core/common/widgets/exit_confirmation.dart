import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Shows a "close the app?" confirmation and exits the app if confirmed.
///
/// Wire into [PopScope.onPopInvokedWithResult] on screens that should never
/// pop back to a previous screen on the hardware/gesture back button (e.g.
/// a login screen with nothing behind it, or a home screen that must not
/// return to login).
Future<void> confirmExitApp(BuildContext context) async {
  final shouldExit = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Exit App'),
      content: const Text('Are you sure you want to close the app?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Exit'),
        ),
      ],
    ),
  );

  if (shouldExit == true) {
    SystemNavigator.pop();
  }
}
