import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';
import 'app_image_widget.dart';
import 'gap.dart';

class RoundedIconButton extends StatelessWidget {
  final String? iconPath;
  final bool isOutlined;
  final Color? buttonColor;
  final Color? iconColor;
  final Color? labelColor;
  final String label;
  final VoidCallback? onTap;

  const RoundedIconButton({
    super.key,
    this.iconPath,
    this.isOutlined = false,
    this.buttonColor,
    this.iconColor,
    this.labelColor,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = buttonColor ?? theme.colors.primary;
    return Container(
      constraints: const BoxConstraints(minHeight: 31),
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      decoration: BoxDecoration(
        color: isOutlined ? null : color,
        borderRadius: BorderRadius.circular(30),
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
                color: labelColor ?? (isOutlined ? color : theme.colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
