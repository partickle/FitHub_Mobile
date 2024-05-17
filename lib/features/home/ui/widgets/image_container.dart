import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {super.key,
      this.height = 160,
      this.borderRadius = 20,
      required this.width,
      required this.cardImageUrl,
      required this.imageUrl,
      this.padding,
      this.margin,
      this.child});

  final double width;
  final double height;
  final String cardImageUrl;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image:
            DecorationImage(image: AssetImage(cardImageUrl,), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
