import 'package:flutter/material.dart';

import '../../common_widgets/app_checkbox.dart';
import '../../common_widgets/gap.dart';
import '../../common_widgets/rounded_icon_button.dart';
import '../../config/theme/app_theme.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_strings.dart';

class UserQuestionCard extends StatelessWidget {
  final int answersCount;
  final EdgeInsetsGeometry? margin;
  final bool showCheckBox;

  const UserQuestionCard({
    super.key,
    this.answersCount = 0,
    this.margin,
    this.showCheckBox = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.colors.primary,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          userNameWithAvatar(context),
          const VerticalGap(gap: 8.5),
          Text(
            "Question 1 / Topic",
            style: theme.textTheme.subTitle.copyWith(
              fontSize: 13,
              color: theme.colors.tertiaryText,
              fontStyle: FontStyle.italic,
            ),
          ),
          const VerticalGap(gap: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "How would you describe our family’s humour as if to a stranger?",
                  style: theme.textTheme.body1.copyWith(
                    fontSize: 15,
                    color: theme.colors.primaryText,
                  ),
                ),
              ),
              if (showCheckBox) ...[
                const HorizontalGap(),
                const AppCheckbox(),
              ],
            ],
          ),
          const VerticalGap(gap: 12),
          Row(
            children: [
              RoundedIconButton(label: "${AppStrings.answers} [$answersCount]"),
              const HorizontalGap(),
              RoundedIconButton(
                label: AppStrings.share,
                iconPath: AppIcons.share,
                buttonColor: theme.colors.cardBackground,
                labelColor: theme.colors.primary,
              ),
            ],
          ),
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
        Text(
          AppStrings.tabishBinTahir,
          style: theme.textTheme.title.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
