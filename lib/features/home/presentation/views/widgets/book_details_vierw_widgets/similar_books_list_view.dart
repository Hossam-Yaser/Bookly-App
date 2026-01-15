import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/view_model/similarbooks/similarbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarbooksCubit, SimilarbooksState>(
      builder: (context, state) {
        if (state is Similarbooksfailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        if (state is SimilarbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.similarBooksList.length,
              itemBuilder: (context, index) {
                return CustomBookItem(
                  bookResponseModel: state.similarBooksList[index],
                  onTap: () {
                    GoRouter.of(context).pushReplacement(
                      AppRouter.kBookDetailsView,
                      extra: state.similarBooksList[index],
                    );
                  },
                );
              },
            ),
          );
        }
        return CustomLoadingWidget();
      },
    );
  }
}
