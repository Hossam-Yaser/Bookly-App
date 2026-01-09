import 'package:bookly_app/core/helpers/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(AssetsConstants.mainLogo, width: 200),
    );
  }
}
