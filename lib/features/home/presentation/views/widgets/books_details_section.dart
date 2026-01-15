import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_vierw_widgets/price_and_preview_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookResponseModel});
  final BookResponseModel bookResponseModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.17,
          ),
          child: CustomBookItem(bookResponseModel: bookResponseModel),
        ),
        const SizedBox(height: 43),
        Text(
          bookResponseModel.volumeInfo!.title!,
          style: AppTextStyles.font30WhiteRegular,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          getAuthors(bookResponseModel: bookResponseModel),
          style: AppTextStyles.font18GreyRegular.copyWith(
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        RatingSection(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4.8,
          numberOfRating: 2000,
        ),
        const SizedBox(height: 30),
        PriceAndPreviewButton(bookResponseModel: bookResponseModel),
      ],
    );
  }

  String getAuthors({required BookResponseModel bookResponseModel}) {
    String authorsNames = '';
    if (bookResponseModel.volumeInfo!.authors == null) {
      return authorsNames;
    } else {
      if (bookResponseModel.volumeInfo!.authors!.length > 1) {
        for (var author in bookResponseModel.volumeInfo!.authors!) {
          authorsNames += "\n $author";
        }
        return authorsNames;
      } else {
        authorsNames = bookResponseModel.volumeInfo!.authors!.first;
        return authorsNames;
      }
    }
  }
}
