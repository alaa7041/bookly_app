
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class ItemSeller extends StatelessWidget {
  const ItemSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Image.asset(
              AssetsData.testImage,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "Harry Potter  and the Goblet of Fire ",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 2),
              const Text("J.K. Rowling", style: Styles.textStyle14),
              const SizedBox(width: 2),
              Row(
                children: const [
                  Text("19.99 €", style: Styles.textStyle20),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
