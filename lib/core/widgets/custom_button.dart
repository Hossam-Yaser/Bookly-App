import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.borderRadius,
    this.buttonText,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadiusGeometry.circular(16),
          ),
        ),
        child: Text(
          buttonText ?? "19.99€",
          style: AppTextStyles.font18WhiteBold.copyWith(color: textColor),
        ),
      ),
    );
  }
}
