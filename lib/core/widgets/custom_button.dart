import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textColor,
    required this.backgroundColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });

  final Color textColor, backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            ),
          )),
    );
  }
}
