import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/app_image_widget.dart';
import '../../../common_widgets/gap.dart';
import '../../../config/theme/app_theme.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_strings.dart';

class UploadCoverCard extends StatelessWidget {
  const UploadCoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return DottedBorder(
      color: theme.colors.primary,
      dashPattern: const [8, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(8),
      child: Container(
        height: 218,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.colors.cardBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImageWidget.svgAsset(
              AppIcons.uploadCover,
            ),
            const VerticalGap(),
            Text(
              AppStrings.uploadCover,
              style: theme.textTheme.body1.copyWith(
                color: theme.colors.primary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
