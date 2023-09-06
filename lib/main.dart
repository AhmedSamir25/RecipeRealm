import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reciperealm/core/router/app_router.dart';
import 'package:reciperealm/core/theme/theme_light.dart';
void main() {
  runApp(const RecipeRealm());
}

class RecipeRealm extends StatelessWidget {
  const RecipeRealm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
      return MaterialApp.router(
        title: 'RecipeRealm',
        theme: getThemeDataLight(),
       routerConfig:AppRouter.router,
      );
       }
    );
  }
}

