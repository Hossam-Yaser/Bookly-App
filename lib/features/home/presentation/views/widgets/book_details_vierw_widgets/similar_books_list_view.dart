import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/futured_books_cubit/futuredbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FuturedbooksCubit, FuturedbooksState>(
      builder: (context, state) {
        if (state is FuturedbooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        if (state is FuturedbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.futureBooksList.length,
              itemBuilder: (context, index) {
                return SliverToBoxAdapter(child: CustomBookItem(imageURL: ''));
              },
            ),
          );
        }
        return CustomLoadingWidget();
      },
    );
  }
}
