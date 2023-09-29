import 'package:flutter/material.dart';

class ImageFood extends StatelessWidget {
  const ImageFood({super.key, required this.imageWidth, required this.imageHeight});
  final double imageWidth;
  final double imageHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: Container(
        width: imageWidth,
        //370 , 400
        height: imageHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/image/photosingin.jpg')),
        ),
      ),
    );
  }
}
