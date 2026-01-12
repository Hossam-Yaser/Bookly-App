import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/futured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FuturedBookListView(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 25,
                  ),
                  child: Text(
                    "Best Seller",
                    style: AppTextStyles.font18WhiteSemiBold,
                  ),
                ),
              ],
            ),
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}
