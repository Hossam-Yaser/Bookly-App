import 'package:bookly_app/core/helpers/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FadeAnimaitionBuilder extends StatelessWidget {
  const FadeAnimaitionBuilder({super.key, required this.slidingAnimation});

  final Animation<double> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return FadeTransition(
          alwaysIncludeSemantics: true,
          opacity: slidingAnimation,
          child: SvgPicture.asset(AssetsConstants.mainLogo, width: 200),
        );
      },
    );
  }
}
