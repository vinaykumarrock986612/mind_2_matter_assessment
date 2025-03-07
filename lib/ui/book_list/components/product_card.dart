import 'package:flutter/material.dart';

import '../../../common_widgets/app_image_widget.dart';
import '../../../common_widgets/app_inkwell.dart';
import '../../../common_widgets/gap.dart';
import '../../../config/theme/app_theme.dart';
import '../../../constants/app_assets.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppInkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(imagePath),
              ),
              const VerticalGap(gap: 12),
              Text(
                title,
                style: theme.textTheme.title,
              ),
              const VerticalGap(),
              Text(
                author,
                style: theme.textTheme.subTitle,
              ),
            ],
          ),
          Positioned(
            right: 10.5,
            top: 10.5,
            child: AppImageWidget.svgAsset(AppIcons.heart),
          ),
        ],
      ),
    );
  }
}
