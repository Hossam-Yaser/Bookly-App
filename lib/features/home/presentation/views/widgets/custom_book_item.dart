import 'package:bookly_app/core/helpers/constants/assets_constants.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 150 / 224,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsConstants.bookTest),
            ),
          ),
        ),
      ),
    );
  }
}
