import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class ProgressBar extends StatelessWidget {
  final double progress;

  const ProgressBar({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return  LinearProgressIndicator(
      value: progress,
      color: theme.colors.primary,
      minHeight: 13,
      borderRadius: BorderRadius.circular(40),
      backgroundColor: theme.colors.progressBackground,
    );
  }
}
