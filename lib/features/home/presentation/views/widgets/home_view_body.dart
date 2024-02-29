import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'best_seller_item.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_book_image.dart';
import 'featured_books_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 10.5),
              CustomAppBar(),
              SizedBox(height: 30.5),
              FeaturedBooksListViewItem(),
              SizedBox(height: 49),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
              SizedBox(height: 10),
              // BestSellerListView(),
            ],
          ),
        ),
         const SliverFillRemaining(

          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: BestSellerListView(),
          ),
        ),
      ],
    );

  }
}

