import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoesly/themes/app_colors.dart';
import 'package:shoesly/themes/styles_text.dart';
import 'package:shoesly/themes/theme_text.dart';

final ThemeData kLightTheme = ThemeData(
  fontFamily: FontFamily.openSans,
  brightness: Brightness.light,
  primaryColor: AppColors.white,
  errorColor: AppColors.error500,
  disabledColor: AppColors.neutral300,
  textTheme: ThemeText.primaryTextTheme,
  primaryTextTheme: ThemeText.primaryTextTheme,
  canvasColor: Colors.white,
  backgroundColor: AppColors.white,
  scaffoldBackgroundColor: AppColors.white,
  iconTheme: const IconThemeData(color: AppColors.neutral500),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: true,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    isDense: true,
    contentPadding: EdgeInsets.zero,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
  ),
);
