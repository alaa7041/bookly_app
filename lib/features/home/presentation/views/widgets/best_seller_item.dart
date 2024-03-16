import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_rating.dart';

class ItemSeller extends StatelessWidget {
  const ItemSeller({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 128,
        child: Row(
          children: [
            CustomBookImage(imgUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 2),
                   Text(bookModel.volumeInfo.authors![0], style: Styles
                       .textStyle14),
                  const SizedBox(width: 2),
                  Row(
                    children:  [
                      const Text("Free", style: Styles.textStyle20),
                      const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating??0,
                        count: bookModel.volumeInfo.ratingsCount??0,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
