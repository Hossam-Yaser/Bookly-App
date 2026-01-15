import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
    required this.bookResponseModel,
    this.onTap,
  });
  final BookResponseModel bookResponseModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
          child: AspectRatio(
            aspectRatio: 150 / 224,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: bookResponseModel.volumeInfo!.imageLinks!.thumbnail!,
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
