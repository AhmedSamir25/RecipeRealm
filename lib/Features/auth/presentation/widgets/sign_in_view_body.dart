import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reciperealm/Features/auth/presentation/widgets/elevated_button.dart';
import 'package:reciperealm/Features/auth/presentation/widgets/have_acount_privacy.dart';
import 'package:reciperealm/Features/auth/presentation/widgets/image_auth.dart';
import 'package:reciperealm/Features/auth/presentation/widgets/text_form_field.dart';
import 'package:reciperealm/core/theme/color/colors.dart';
import 'package:reciperealm/core/theme/text_styles.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(children: [
        Stack(
          children: [
            ImageAuth(
              image: 'assets/image/photosingin.jpg',
              screenHeight: 205.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 190.h),
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
                  padding:  EdgeInsets.symmetric(horizontal: 12.h),
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
                        hintText: 'email@expomel.com',
                        labelText: 'Enter Your Email',
                        paddingHorizontal: 8.h,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomTextFormField(
                          labelText: 'password',
                          hintText: '',
                          paddingHorizontal: 10.h),
                      SizedBox(
                        height: 20.h,
                      ),
                      ElevatedButton(
                        style:const ButtonStyle(backgroundColor:MaterialStatePropertyAll(colorApp)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign in',
                                style: Theme.of(context).textTheme.displayMedium),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        '--------or-----',
                        style: StyleText.textStyle18,
                        ),
                      SizedBox(
                        height: 10.h,),
                      Row(
                        children: [
                          CustomElevatedButton(
                              onPressed: () {},
                              imageButton: 'assets/image/facebook.png',
                              textButton: 'Facebook'),
                          const Spacer(
                            flex: 1,),
                          CustomElevatedButton(
                              onPressed: () {},
                              imageButton: 'assets/image/google.png',
                              textButton: 'Google'),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      HaveAcountAndPrivacy(haveAcount: "don’t have acount,",
                      signInUp: "Sign up",
                      onPressed: (){},),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],),
    );
  }
}