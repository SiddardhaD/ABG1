import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// App-standard filled button. Shows a spinner and disables interaction when
/// [isLoading]; disabled when [onPressed] is null. Styling comes from
/// `ElevatedButtonTheme` in [AppTheme].
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isLoading = false,
    this.icon,
    this.isEnabled = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final IconData? icon;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? null : scheme.onSurface.withOpacity(0.12),
        foregroundColor: isEnabled ? null : scheme.onSurface.withOpacity(0.38),
      ),
      onPressed: isEnabled && !isLoading ? onPressed : null,
      child: isLoading
          ? SizedBox(
              height: 22,
              width: 22,
              child: CupertinoActivityIndicator(
                color: scheme.onPrimary,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 20),
                  const SizedBox(width: 8),
                ],
                Text(label),
              ],
            ),
    );
  }
}
