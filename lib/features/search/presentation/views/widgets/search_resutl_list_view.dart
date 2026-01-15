import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_view_item_shimmer.dart';
import 'package:bookly_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else if (state is SearchSuccess) {
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
                      child: BestSellerListViewItem(
                        bookResponseModel: state.searchResultList[index],
                      ),
                    );
                  }, childCount: state.searchResultList.length),
                ),
              ],
            ),
          );
        } else if (state is SearchLoading) {
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
                      child: BestSellerListViewItemShimmer(),
                    );
                  }, childCount: 10),
                ),
              ],
            ),
          );
        } else {
          return Expanded(
            child: Center(
              child: Text(
                'Search About Books',
                style: AppTextStyles.font30WhiteRegular,
              ),
            ),
          );
        }
      },
    );
  }
}
