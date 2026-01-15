import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/futured_books_cubit/futuredbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item_skeltonizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FuturedBookListView extends StatelessWidget {
  const FuturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FuturedbooksCubit, FuturedbooksState>(
      builder: (context, state) {
        if (state is FuturedbooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else if (state is FuturedbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.futureBooksList.length,
              itemBuilder: (context, index) {
                return CustomBookItem(
                  bookResponseModel: state.futureBooksList[index],
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailsView,
                      extra: state.futureBooksList[index],
                    );
                  },
                );
              },
            ),
          );
        }
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return CustomBookItemShimmer();
            },
          ),
        );
      },
    );
  }
}
