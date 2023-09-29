import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reciperealm/Features/home/presentation/view/widgets/app_bar_home_view.dart';
import 'package:reciperealm/Features/home/presentation/view/widgets/list_home_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          child: Column(
            children: [
              const AppBarHomeView(),
              SizedBox(height: 450.h, child: const ListHomeItemFood()),
            ],
          ),
        ),
      ),
    );
  }
}