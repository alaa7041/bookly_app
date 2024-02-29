import 'package:flutter/material.dart';

import 'custom_app_bar_books_details.dart';
import 'custom_book_image.dart';
import 'featured_books_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children:  [
          const CustomAppBarBDetails(),
          SizedBox(height:33 ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}

