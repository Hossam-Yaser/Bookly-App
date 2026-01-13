import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class BookInfoWidget extends StatelessWidget {
  const BookInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Book Title Harry Potter \n and the Goblet of Fire",
            style: AppTextStyles.font20WhiteRegular,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Book Author J.K. Rowling",
            style: AppTextStyles.font14GreyRegular,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          Row(
            children: [
              Text('19.99 €', style: AppTextStyles.font18WhiteBold),
              Spacer(),
              RatingSection(),
            ],
          ),
        ],
      ),
    );
  }
}
