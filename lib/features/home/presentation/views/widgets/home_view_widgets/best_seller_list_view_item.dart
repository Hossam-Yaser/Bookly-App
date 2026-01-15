import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/book_info_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookResponseModel});
  final BookResponseModel bookResponseModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: AspectRatio(
                aspectRatio: 150 / 224,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl:
                      bookResponseModel.volumeInfo!.imageLinks!.thumbnail!,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(width: 30),

            BookInfoWidget(
              bookTitle: bookResponseModel.volumeInfo!.title!,
              bookAuthor: bookResponseModel.volumeInfo!.authors![0],
              rating: 4.8,
              numberOfRating: 2221,
            ),
          ],
        ),
      ),
    );
  }
}
