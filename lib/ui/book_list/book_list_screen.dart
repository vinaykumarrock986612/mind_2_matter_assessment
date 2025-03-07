import 'package:flutter/material.dart';

import '../../common_widgets/app_state_widget.dart';
import '../../common_widgets/circle_svg_icon_button.dart';
import '../../common_widgets/common_app_bar.dart';
import '../../common_widgets/fixed_cross_axis_count_builder.dart';
import '../../common_widgets/gap.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_strings.dart';
import '../book_details/book_details_screen.dart';
import '../create_book/create_book_screen.dart';
import 'components/product_card.dart';

class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends AppState<BookListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colors.background,
      floatingActionButton: CircleSvgIconButton(
        iconPath: AppIcons.plus,
        height: 53,
        width: 53,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateBookScreen(),
            ),
          );
        },
      ),
      appBar: CommonAppBar(
        title: AppStrings.books,
        actions: [
          const CircleSvgIconButton(
            iconPath: AppIcons.hamburger,
          ),
          const HorizontalGap(gap: 12),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: FixedCrossAxisCountBuilder(
            itemCount: 10,
            spacing: 10,
            runSpacing: 22,
            crossAxisCount: screenSize.width ~/ 180,
            itemBuilder: (context, i) {
              final showImage2 = i == 0
                  ? false
                  : (i - 1) % 4 < 2
                      ? true
                      : false;

              final imagePath = showImage2 ? AppImages.book2 : AppImages.book1;

              return ProductCard(
                title: AppStrings.bookTitle,
                author: AppStrings.tabishBinTahir,
                imagePath: imagePath,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookDetailsScreen(
                        imagePath: imagePath,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
