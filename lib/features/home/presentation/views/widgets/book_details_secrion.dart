

import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_rating.dart';
import 'books_actions.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
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
        const SizedBox(height: 18),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const BooksActions(),
      ],
    );
  }
}
