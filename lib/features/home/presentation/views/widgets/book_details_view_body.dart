import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'best_seller_rating.dart';
import 'books_actions.dart';
import 'custom_app_bar_books_details.dart';
import 'custom_book_image.dart';
import 'featured_books_list_view_item.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody:false ,
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBDetails(),
                const SizedBox(height: 33),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 40),
                const Text("The Jungle Book", style: Styles.textStyle30),
                const SizedBox(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text("Rudyard Kipling",
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                const SizedBox(height: 14),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 37),
                const BooksActions(),
                const Expanded(child:
                SizedBox(height: 50),),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
