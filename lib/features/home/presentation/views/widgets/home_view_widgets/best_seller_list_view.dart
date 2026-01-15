import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/bestsellerbooks_cubit/bestsellerbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/best_seller_list_view_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestsellerbooksCubit, BestsellerbooksState>(
      builder: (context, state) {
        if (state is BestsellerbooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errorMessage),
          );
        } else if (state is BestsellerbooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                child: BestSellerListViewItem(
                  bookResponseModel: state.bestSellerBooksList[index],
                ),
              );
            }, childCount: state.bestSellerBooksList.length),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                child: BestSellerListViewItemShimmer(),
              );
            }, childCount: 6),
          );
        }
      },
    );
  }
}
