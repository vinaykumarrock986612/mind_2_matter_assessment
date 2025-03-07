import 'package:flutter/material.dart';

import '../../../common_widgets/app_checkbox.dart';
import '../../../common_widgets/gap.dart';
import '../../../config/theme/app_theme.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_strings.dart';

class UnSelectedQuestionCard extends StatelessWidget {
  const UnSelectedQuestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: theme.colors.cardBackground.withValues(alpha: 0.7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          userNameWithAvatar(context),
          const VerticalGap(),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and",
            style: theme.textTheme.subTitle.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          const VerticalGap(gap: 12),
        ],
      ),
    );
  }

  Widget userNameWithAvatar(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(
      children: [
        Image.asset(
          AppImages.user1,
          height: 22,
        ),
        const HorizontalGap(),
        Expanded(
          child: Text(
            AppStrings.tabishBinTahir,
            style: theme.textTheme.title.copyWith(
              fontSize: 14,
            ),
          ),
        ),
        const AppCheckbox(),
      ],
    );
  }
}
