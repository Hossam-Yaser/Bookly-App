import 'package:bookly_app/core/helpers/constants/assets_constants.dart';
import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
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
