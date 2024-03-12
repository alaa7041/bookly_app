import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'best_seller_rating.dart';
import 'book_details_secrion.dart';
import 'books_actions.dart';
import 'custom_app_bar_books_details.dart';
import 'custom_book_image.dart';
import 'featured_books_list_view_item.dart';
import 'similar_book_section.dart';
import 'similar_books_list_view.dart';

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
