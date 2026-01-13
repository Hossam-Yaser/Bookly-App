import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_vierw_widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 38),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            const SizedBox(height: 22),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.17,
              ),
              child: CustomBookItem(),
            ),
            const SizedBox(height: 43),
            Text('Book Title', style: AppTextStyles.font30WhiteRegular),
            const SizedBox(height: 6),
            Text(
              'Book Author Name',
              style: AppTextStyles.font18GreyRegular.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),
            RatingSection(),
          ],
        ),
      ),
    );
  }
}
