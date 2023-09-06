import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.textButton, this.imageButton, required this.onPressed});
  final String textButton;
  final String? imageButton;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){}, child:  Row(
          children: [
             Text(textButton,
            style:Theme.of(context).textTheme.displaySmall,
            ),
            
            SizedBox(width: 5.h,),
            Image.asset(imageButton??'assets/image/google.png', 
            width:25.w,
            height:40.h,
            ),
          ],
        ),
        );
  }
}