import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/futured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FuturedBookListView(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
            child: Text("Top Rated", style: AppTextStyles.font18WhiteSemiBold),
          ),
        ],
      ),
    );
  }
}
