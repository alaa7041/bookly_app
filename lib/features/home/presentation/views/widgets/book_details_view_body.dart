import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'book_details_secrion.dart';
import 'custom_app_bar_books_details.dart';
import 'similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBDetails(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBooksSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
