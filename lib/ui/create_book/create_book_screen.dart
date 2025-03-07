import 'package:flutter/material.dart';

import '../../common_widgets/app_icon_button.dart';
import '../../common_widgets/app_state_widget.dart';
import '../../common_widgets/app_text_field.dart';
import '../../common_widgets/common_app_bar.dart';
import '../../common_widgets/gap.dart';
import '../../common_widgets/progress_bar.dart';
import '../../constants/app_strings.dart';
import '../add_questions/add_questions_screen.dart';
import 'components/upload_cover_card.dart';

class CreateBookScreen extends StatefulWidget {
  const CreateBookScreen({super.key});

  @override
  State<CreateBookScreen> createState() => _CreateBookScreenState();
}

class _CreateBookScreenState extends AppState<CreateBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colors.background,
      appBar: CommonAppBar(
        title: AppStrings.createABook,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
        children: [
          const ProgressBar(progress: 0.3),
          const VerticalGap(gap: 35),
          const UploadCoverCard(),
          const VerticalGap(gap: 18),
          AppTextField(
            hintText: AppStrings.bookTitle,
          ),
          const VerticalGap(gap: 12),
          AppTextField(
            hintText: AppStrings.designationOrNameOfPerson,
          ),
          const VerticalGap(gap: 12),
          AppTextField(
            hintText: AppStrings.volumeNumber,
          ),
          const VerticalGap(gap: 65),
          AppIconButton(
            label: AppStrings.addQuestions,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddQuestionsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
