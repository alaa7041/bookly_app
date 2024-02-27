
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6.3),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(width:9),
        Text(
          "(2407)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
