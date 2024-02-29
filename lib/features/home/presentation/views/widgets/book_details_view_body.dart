import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          CustomAppBarBDetails(),
        ],
      ),
    );
  }
}

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
