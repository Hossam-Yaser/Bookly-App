import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_vierw_widgets/price_and_preview_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.17,
          ),
          child: CustomBookItem(imageURL: ''),
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
        RatingSection(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4.8,
          numberOfRating: 2000,
        ),
        const SizedBox(height: 30),
        PriceAndPreviewButton(),
      ],
    );
  }
}
