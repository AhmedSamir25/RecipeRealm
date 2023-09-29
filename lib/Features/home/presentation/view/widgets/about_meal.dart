import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/color/colors.dart';

class AboutMeal extends StatelessWidget {
  const AboutMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'koshari Egpytion',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        SizedBox(
          height: 3.h,
        ),
        const Text('keep this easy to make dish'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('3.1k like'),
            SizedBox(
              width: 10.w,
            ),
            const Text("|"),
            SizedBox(
              width: 10.w,
            ),
            const Text('4.6'),
            const Icon(
              Icons.star,
              color: colorApp,
            ),
          ],
        ),
      ],
    );
  }
}
