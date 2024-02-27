import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list.dart';
import 'featured_books_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 10.5),
          CustomAppBar(),
          SizedBox(height: 30.5),
          FeaturedBooksListViewItem(),
          SizedBox(height: 49),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
          ItemSeller(),
        ],
      ),
    );
  }
}

class ItemSeller extends StatelessWidget {
  const ItemSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 128,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/ 4,
            child: Image.asset(
              AssetsData.testImage,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
