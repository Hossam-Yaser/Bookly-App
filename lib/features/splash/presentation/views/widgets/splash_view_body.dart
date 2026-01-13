import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/fade_animation_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    initFadeAnimation();
    navigateToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeAnimaitionBuilder(slidingAnimation: slidingAnimation),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void initFadeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidingAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        GoRouter.of(context).push(AppRouter.khomeView);
      }
    });
  }
}
