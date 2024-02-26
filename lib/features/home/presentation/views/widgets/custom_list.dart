

import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Image.asset(
        AssetsData.testImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
