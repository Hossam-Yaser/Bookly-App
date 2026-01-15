import 'package:bookly_app/core/utils/funcitons/lunch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:flutter/material.dart';

class PriceAndPreviewButton extends StatelessWidget {
  const PriceAndPreviewButton({super.key, required this.bookResponseModel});
  final BookResponseModel bookResponseModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              buttonText: "Free",
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                launchCustomURL(
                  context,
                  bookResponseModel.volumeInfo!.previewLink!,
                );
              },
              backgroundColor: const Color(0xffEF8262),
              buttonText: getButtonText(bookResponseModel),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getButtonText(BookResponseModel book) {
    if (book.volumeInfo!.previewLink == null) {
      return "No Preview";
    } else {
      return "Free Preview";
    }
  }
}
