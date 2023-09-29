import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reciperealm/Features/home/presentation/view/widgets/about_meal.dart';
import 'package:reciperealm/Features/home/presentation/view/widgets/image_list_home.dart';
import '../../../../../core/theme/color/colors.dart';

class ListHomeItemFood extends StatelessWidget {
  const ListHomeItemFood({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Container(
        height: 440.h,
        decoration: BoxDecoration(
          color: colorApp,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            ImageFood(
              imageHeight: 400.h,
              imageWidth: 370.w,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 240.h),
                width: 320.w,
                height: 350.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const AboutMeal(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
