import 'package:flutter/material.dart';

class ImageAuth extends StatelessWidget {
  const ImageAuth({super.key, required this.image, required this.screenHeight});
  final String image;
  final double screenHeight ;
  @override
  Widget build(BuildContext context) {
    return Image.asset(image,
    height:screenHeight ,
    width: double.infinity,
    fit: BoxFit.fill,
    );
  }
}