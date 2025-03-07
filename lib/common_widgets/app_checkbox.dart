import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Transform.scale(
      scale: 1.1,
      child: Checkbox(
        value: false,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        side: WidgetStateBorderSide.resolveWith(
          (states) => BorderSide(
            width: 1.0,
            color: theme.colors.primary,
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
