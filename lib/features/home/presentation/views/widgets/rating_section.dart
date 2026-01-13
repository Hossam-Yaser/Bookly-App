import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 14),
        Text('4.8', style: AppTextStyles.font16WhiteBold),
        Text('(2390)', style: AppTextStyles.font14GreyRegular),
      ],
    );
  }
}
