import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class BookInfoWidget extends StatelessWidget {
  const BookInfoWidget({
    super.key,
    required this.bookTitle,
    required this.bookAuthor,
    required this.rating,
    required this.numberOfRating,
    this.bookPrice = '',
  });

  final String bookTitle;
  final String bookAuthor;
  final String bookPrice;
  final double rating;
  final int numberOfRating;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookTitle,
            style: AppTextStyles.font20WhiteRegular,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            bookAuthor,
            style: AppTextStyles.font14GreyRegular,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          Row(
            children: [
              Text(
                bookPrice.isEmpty ? "Free" : '$bookPrice €',
                style: AppTextStyles.font18WhiteBold,
              ),
              Spacer(),
              RatingSection(rating: rating, numberOfRating: numberOfRating),
            ],
          ),
        ],
      ),
    );
  }
}
