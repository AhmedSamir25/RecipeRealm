
import 'package:flutter/material.dart';
import 'package:reciperealm/core/theme/color/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText, required this.hintText, required this.paddingHorizontal});
  final String labelText;
  final String hintText;
  final double paddingHorizontal;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: colorApp,
      
         decoration:  InputDecoration(
          focusColor: colorApp,
      border:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      labelText: labelText,labelStyle: const TextStyle(color: colorApp),
      hintText: hintText,
      ),
    );
  }
}