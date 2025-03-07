import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';
import 'app_image_widget.dart';
import 'app_inkwell.dart';

class CircleSvgIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback? onTap;
  final double? height;
  final double? width;

  const CircleSvgIconButton({
    super.key,
    required this.iconPath,
    this.onTap,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppInkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 34,
        height: height ?? 34,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.colors.primary,
        ),
        child: AppImageWidget.svgAsset(
          iconPath,
          color: theme.colors.background,
        ),
      ),
    );
  }
}
