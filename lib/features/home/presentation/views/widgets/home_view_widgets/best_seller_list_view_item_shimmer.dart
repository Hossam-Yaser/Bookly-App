import 'package:bookly_app/core/helpers/constants/colors_constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerListViewItemShimmer extends StatelessWidget {
  const BestSellerListViewItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          // Image shimmer
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 150 / 224,
              child: Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: ColorsConstants.mainBackgroundColor,
                child: Container(color: Colors.white),
              ),
            ),
          ),

          const SizedBox(width: 30),

          // Text shimmer (title + author + rating)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Title
                Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: ColorsConstants.mainBackgroundColor,
                  child: Container(
                    height: 18,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),

                // Author
                Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: ColorsConstants.mainBackgroundColor,
                  child: Container(height: 14, width: 150, color: Colors.white),
                ),

                // Rating row
                Row(
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: ColorsConstants.mainBackgroundColor,
                      child: Container(
                        height: 14,
                        width: 60,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
