import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reciperealm/Features/home/presentation/view/home_view.dart';
import 'package:reciperealm/core/theme/theme_light.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const RecipeRealm());
}

class RecipeRealm extends StatelessWidget {
  const RecipeRealm({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
      return MaterialApp(
          title: 'RecipeRealm',
          theme: getThemeDataLight(),
        // routerConfig:AppRouter.router,
        home: HomeView(),
        );
      }
    );
  }
}

