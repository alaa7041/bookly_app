
import 'package:flutter/material.dart';

class CustomAppBarBDetails extends StatelessWidget {
  const CustomAppBarBDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        IconButton(onPressed: () {}, icon: const Icon(Icons
            .shopping_cart_outlined)),

      ],
    );
  }
}
