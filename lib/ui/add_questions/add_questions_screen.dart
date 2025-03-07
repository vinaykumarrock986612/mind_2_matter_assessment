import 'package:flutter/material.dart';

import '../../common_widgets/app_icon_button.dart';
import '../../common_widgets/app_image_widget.dart';
import '../../common_widgets/app_state_widget.dart';
import '../../common_widgets/app_text_field.dart';
import '../../common_widgets/circle_svg_icon_button.dart';
import '../../common_widgets/common_app_bar.dart';
import '../../common_widgets/gap.dart';
import '../../common_widgets/progress_bar.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_strings.dart';
import '../book_details/user_question_card.dart';
import 'components/un_selected_question_card.dart';

class AddQuestionsScreen extends StatefulWidget {
  const AddQuestionsScreen({super.key});

  @override
  State<AddQuestionsScreen> createState() => _AddQuestionsScreenState();
}

class _AddQuestionsScreenState extends AppState<AddQuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colors.background,
      appBar: CommonAppBar(
        title: AppStrings.addQuestions,
      ),
      floatingActionButton: const CircleSvgIconButton(
        iconPath: AppIcons.plus,
        height: 53,
        width: 53,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
        children: [
          const ProgressBar(progress: 0.3),
          const VerticalGap(gap: 35),
          Text(
            AppStrings.bookName,
            style: theme.textTheme.header2.copyWith(
              fontSize: 20,
            ),
          ),
          const VerticalGap(gap: 14),
          Text(
            AppStrings.chooseBetweenTheQuestionsBelow,
            style: theme.textTheme.body2.copyWith(
              fontSize: 15,
            ),
          ),
          const VerticalGap(gap: 12),
          AppTextField(
            hintText: AppStrings.searchHere,
            contentPadding: const EdgeInsets.only(top: 11),
            prefixIcon: AppImageWidget.svgAsset(
              AppIcons.search,
            ),
            suffixIcon: AppImageWidget.svgAsset(
              AppIcons.filter,
            ),
          ),
          const VerticalGap(gap: 12),
          const UserQuestionCard(
            answersCount: 23,
            margin: EdgeInsets.zero,
            showCheckBox: true,
          ),
          const VerticalGap(gap: 12),
          const UnSelectedQuestionCard(),
          const VerticalGap(gap: 12),
          const UserQuestionCard(
            answersCount: 0,
            margin: EdgeInsets.zero,
            showCheckBox: true,
          ),
          const VerticalGap(gap: 12),
          const UserQuestionCard(
            answersCount: 23,
            margin: EdgeInsets.zero,
            showCheckBox: true,
          ),
          const VerticalGap(gap: 22),
          AppIconButton(label: AppStrings.chooseStyle),
          const VerticalGap(gap: 12),
          AppIconButton(
            label: AppStrings.saveDraft,
            isOutlined: true,
          ),
        ],
      ),
    );
  }
}
