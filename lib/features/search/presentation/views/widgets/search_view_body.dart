import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/core/widgets/custom_text_filed.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(),
            const SizedBox(height: 16),
            const Text("Result", style: AppTextStyles.font18WhiteSemiBold),
            const SizedBox(height: 16),
            SearchResultListView(),
          ],
        ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                child: BestSellerListViewItem(),
              );
            }, childCount: 6),
          ),
        ],
      ),
    );
  }
}
