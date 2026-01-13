import 'package:bookly_app/features/home/presentation/views/widgets/book_details_vierw_widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 38),
        child: Column(children: const [CustomBookDetailsAppBar()]),
      ),
    );
  }
}
