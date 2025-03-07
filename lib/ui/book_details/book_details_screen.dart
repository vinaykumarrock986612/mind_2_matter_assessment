import 'package:flutter/material.dart';

import '../../common_widgets/app_icon_button.dart';
import '../../common_widgets/app_state_widget.dart';
import '../../common_widgets/circle_svg_icon_button.dart';
import '../../common_widgets/common_app_bar.dart';
import '../../common_widgets/gap.dart';
import '../../common_widgets/rounded_icon_button.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_strings.dart';
import 'cover_image_card.dart';
import 'user_question_card.dart';

class BookDetailsScreen extends StatefulWidget {
  final String imagePath;

  const BookDetailsScreen({
    super.key,
    required this.imagePath,
  });

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends AppState<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colors.background,
      appBar: CommonAppBar(
        title: AppStrings.bookDetails,
        actions: [
          const CircleSvgIconButton(
            iconPath: AppIcons.hamburger,
          ),
          const HorizontalGap(gap: 12),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        children: [
          CoverImageCard(
            imagePath: widget.imagePath,
          ),
          const VerticalGap(gap: 20),

          /// Title, Edit, Delete
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: buildBookTitle(),
          ),
          const VerticalGap(gap: 8),
          Divider(
            color: theme.colors.secondaryDivider,
          ),
          const VerticalGap(gap: 7),

          buildQuestionCount(
            label: AppStrings.totalQuestions,
            count: 20,
          ),
          buildQuestionCount(
            label: AppStrings.answeredQuestions,
            count: 17,
          ),
          buildQuestionCount(
            label: AppStrings.unAnsweredQuestions,
            count: 3,
          ),

          const VerticalGap(gap: 20),

          AppIconButton(
            iconPath: AppIcons.download,
            label: AppStrings.downloadPdf,
            margin: const EdgeInsets.symmetric(horizontal: 20),
          ),

          const VerticalGap(gap: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: buildDescription(),
          ),

          const VerticalGap(gap: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppStrings.questions,
              style: theme.textTheme.header2,
            ),
          ),
          const VerticalGap(gap: 20),

          const UserQuestionCard(),
          const VerticalGap(gap: 12),
          const UserQuestionCard(answersCount: 23),
          const VerticalGap(gap: 12),
          const UserQuestionCard(answersCount: 23),
        ],
      ),
    );
  }

  Widget buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.description,
          style: theme.textTheme.header2,
        ),
        const VerticalGap(gap: 10),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem psum has been the industry's standard dummy text ever since the 1500s,",
          style: theme.textTheme.subTitle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget buildQuestionCount({
    required String label,
    required int count,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 5, 22, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: theme.textTheme.subTitle,
              ),
              const Spacer(),
              Text(
                count.toString(),
                style: theme.textTheme.title,
              ),
            ],
          ),
          const VerticalGap(),
          Divider(
            color: theme.colors.primaryDivider,
          ),
        ],
      ),
    );
  }

  Widget buildBookTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.bookTitle,
              style: theme.textTheme.header2,
            ),
            const VerticalGap(),
            Text(
              AppStrings.tabishBinTahir,
              style: theme.textTheme.subTitle,
            ),
          ],
        ),
        const HorizontalGap(),
        Row(
          children: [
            /// Edit
            RoundedIconButton(
              label: AppStrings.edit,
              isOutlined: true,
              iconPath: AppIcons.edit,
            ),
            const HorizontalGap(),

            /// Delete
            RoundedIconButton(
              label: AppStrings.delete,
              buttonColor: theme.colors.secondary,
            ),
          ],
        ),
      ],
    );
  }
}
