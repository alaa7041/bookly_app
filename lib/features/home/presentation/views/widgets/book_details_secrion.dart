import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_rating.dart';
import 'books_actions.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomBookImage(
              imgUrl:bookModel.volumeInfo.imageLinks?.thumbnail ??''),
        ),
        const SizedBox(height: 40),
         Text(bookModel.volumeInfo.title!, style: Styles.textStyle30,
             textAlign: TextAlign.center),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(bookModel.volumeInfo.authors?[0]??'',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
              )),
        ),
        const SizedBox(height: 18),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating??0,
          count:  bookModel.volumeInfo.ratingsCount??0,
        ),
        const SizedBox(height: 37),
         BooksActions(bookModel:bookModel ),
      ],
    );
  }
}
