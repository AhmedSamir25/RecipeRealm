import 'package:flutter/material.dart';

class AppBarHomeView extends StatelessWidget {
  const AppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('hi ahmed'),
            Text('whats cook to day'),
          ],
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: (const Icon(Icons.access_alarm)))
      ],
    );
  }
}
