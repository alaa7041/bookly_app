import 'package:flutter/material.dart';

import 'book_details_secrion.dart';
import 'custom_app_bar_books_details.dart';
import 'similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody:false ,
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CustomAppBarBDetails(),
                BookDetailsSection(),
                Expanded(child:
                SizedBox(height: 50),),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
