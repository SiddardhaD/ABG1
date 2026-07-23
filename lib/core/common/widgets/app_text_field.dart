import 'package:flutter/material.dart';

import '../../theme/app_spacing.dart';

/// Labeled text field wrapping [TextFormField]. Decoration is inherited from
/// `InputDecorationTheme` in [AppTheme]; pass [errorText] to show validation
/// errors driven by the view model.
class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.onChanged,
    this.errorText,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.suffix,
    this.autofillHints,
    this.focusNode,
    this.autofocus = false,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.none,
    this.isDense = false,
  });

  final String label;
  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Widget? suffix;
  final Iterable<String>? autofillHints;
  final FocusNode? focusNode;
  final bool autofocus;
  final ValueChanged<String>? onFieldSubmitted;
  final TextCapitalization textCapitalization;

  /// Shrinks label + field padding for tight spaces (e.g. a landscape
  /// inline search bar) without changing the default look elsewhere.
  final bool isDense;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: isDense ? textTheme.labelSmall : textTheme.labelMedium),
        SizedBox(height: isDense ? AppSpacing.xs : AppSpacing.sm),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          autofillHints: autofillHints,
          focusNode: focusNode,
          autofocus: autofocus,
          onFieldSubmitted: onFieldSubmitted,
          textCapitalization: textCapitalization,
          decoration: InputDecoration(
            hintText: hint,
            errorText: errorText,
            suffixIcon: suffix,
            isDense: isDense,
            contentPadding: isDense
                ? const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.sm)
                : null,
          ),
        ),
      ],
    );
  }
}
