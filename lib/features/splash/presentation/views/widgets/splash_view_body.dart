import 'package:bookly_app/core/helpers/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    slidingAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeAnimaitionBuilder(slidingAnimation: slidingAnimation),
    );
  }
}

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
