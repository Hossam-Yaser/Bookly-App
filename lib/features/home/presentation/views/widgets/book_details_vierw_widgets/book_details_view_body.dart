import 'package:bookly_app/features/home/presentation/views/widgets/book_details_vierw_widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  const SizedBox(height: 22),
                  BooksDetailsSection(),
                  const SizedBox(height: 40),
                  SimilarBooksSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
