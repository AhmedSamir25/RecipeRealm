import 'package:flutter/material.dart';
import 'package:reciperealm/core/theme/color/colors.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          MaterialButton(onPressed: (){},
          child: Container(
            decoration: BoxDecoration(
              color: colorApp,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          ),
          TextButton(onPressed: (){}, child: Text(
            'skip',style: Theme.of(context).textTheme.bodySmall,
          ),
          ),
        ],
      ),
    );
  }
}