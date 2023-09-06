import 'package:flutter/material.dart';
import 'package:reciperealm/core/theme/color/colors.dart';
import 'package:reciperealm/core/theme/text_styles.dart';

ThemeData getThemeDataLight() => ThemeData(
      primaryColor: colorApp,

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(4),
          // color background elevated button = ornge
          backgroundColor: const MaterialStatePropertyAll(colorbackgroud),
          textStyle: MaterialStatePropertyAll(StyleText.textStyle18),
        ),
      ),
      textTheme: TextTheme(
        displaySmall: StyleText.textStyle18.copyWith(
          color: colorApp,
        ),
        displayMedium: StyleText.textStyle22.copyWith(
          color: colorbackgroud,
        ),
        bodyMedium: StyleText.textStyle15,
        bodySmall: StyleText.textStyle10
      ),
      focusColor: colorApp,
    );
