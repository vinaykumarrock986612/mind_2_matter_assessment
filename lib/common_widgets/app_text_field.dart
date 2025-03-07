import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;

  const AppTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: contentPadding,
          fillColor: theme.colors.cardBackground,
          hintStyle: theme.textTheme.body1.copyWith(
            color: theme.colors.secondaryText.withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }
}
