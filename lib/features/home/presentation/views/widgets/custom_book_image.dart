import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imgUrl,

          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
