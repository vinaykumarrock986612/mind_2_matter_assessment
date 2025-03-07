import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';
import 'app_image_widget.dart';
import 'app_inkwell.dart';
import 'gap.dart';

class AppIconButton extends StatelessWidget {
  final String? iconPath;
  final bool isOutlined;
  final Color? buttonColor;
  final Color? iconColor;
  final String label;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;

  const AppIconButton({
    super.key,
    this.iconPath,
    this.isOutlined = false,
    this.buttonColor,
    this.iconColor,
    required this.label,
    this.onTap,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = buttonColor ?? theme.colors.primary;
    return AppInkWell(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 47),
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        decoration: BoxDecoration(
          color: isOutlined ? null : color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isOutlined ? color : Colors.transparent,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconPath != null) ...[
              AppImageWidget.svgAsset(
                iconPath ?? "",
                color: iconColor,
              ),
              const HorizontalGap(),
            ],
            Flexible(
              child: Text(
                label,
                style: theme.textTheme.buttonText.copyWith(
                  color: isOutlined ? color : theme.colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
