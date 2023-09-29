import 'package:flutter/material.dart';

import 'widgets/sign_in_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SigninViewBody() ,
    );
  }
}