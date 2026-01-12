import 'package:bookly_app/core/helpers/constants/assets_constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info_widget.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 150 / 224,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsConstants.bookTest),
                ),
              ),
            ),
          ),
          SizedBox(width: 30),

          BookInfoWidget(),
        ],
      ),
    );
  }
}
