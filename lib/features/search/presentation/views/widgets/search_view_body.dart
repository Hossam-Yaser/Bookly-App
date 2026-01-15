import 'package:bookly_app/core/utils/app_text_styles.dart';
import 'package:bookly_app/core/widgets/custom_text_filed.dart';
import 'package:bookly_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_resutl_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            CustomTextField(
              onSubmitted: (value) {
                BlocProvider.of<SearchCubit>(
                  context,
                ).searchAboutBooks(searchKey: value);
              },
            ),
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
