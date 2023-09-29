import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reciperealm/Features/auth/presentation/view/widgets/have_acount_privacy.dart';
import 'package:reciperealm/Features/auth/presentation/view/widgets/image_auth.dart';
import 'package:reciperealm/Features/auth/presentation/view/widgets/text_form_field.dart';
import 'package:reciperealm/core/router/app_router.dart';
import 'package:reciperealm/core/theme/color/colors.dart';
import 'package:reciperealm/core/theme/text_styles.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return  SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  ImageAuth(
                    image: 'assets/image/photosingup.jpg',
                    screenHeight: 205.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 190.h),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.7,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          )),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: Column(
                          children: [
                            Text(
                              'Recipe Realm',
                              style: StyleText.textStyle22,
                            ),
                            Text(
                              'Everyone can be a chef',
                              style: StyleText.textStyle18,
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            CustomTextFormField(
                              keyboardType: TextInputType.emailAddress,
                              signController: emailController,
                              hintText: 'email@expomel.com',
                              labelText: 'Enter Your Email',
                              paddingHorizontal: 8.h,
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            CustomTextFormField(
                                signController: passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                labelText: 'password',
                                hintText: '',
                                paddingHorizontal: 10.h),
                            SizedBox(
                              height: 20.h,
                            ),
                            ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(colorApp)),
                              onPressed: () {
                                if (emailController.text.isNotEmpty &&
                                    passwordController.text.isNotEmpty) {
                                    }
                                
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Sign in',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            HaveAcountAndPrivacy(
                              haveAcount: "don’t acount,",
                              signInUp: "Sign up",
                              onPressed: () {
                                GoRouter.of(context).push(AppRouter.sSignUpView);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
  }
