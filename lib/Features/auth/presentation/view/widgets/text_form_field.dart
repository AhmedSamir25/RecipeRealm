
import 'package:flutter/material.dart';
import 'package:reciperealm/core/theme/color/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText,
   required this.hintText,
    required this.paddingHorizontal,
    required this.signController,required this.keyboardType,
    });
  final String labelText;
  final String hintText;
  final double paddingHorizontal;
  final TextEditingController signController;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      cursorColor: colorApp,
          controller:signController ,
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