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
  textButtonTheme: const TextButtonThemeData(
      // style: ButtonStyle(
      //   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      //   padding: MaterialStateProperty.all<EdgeInsets>(
      //     EdgeInsets.symmetric(vertical: padding15),
      //   ),
      //   backgroundColor:
      //       MaterialStateProperty.all<Color>(LightColors.defaultButtonColor),
      //   overlayColor: MaterialStateProperty.all<Color>(
      //     Colors.white.withOpacity(0.2),
      //   ),
      //   foregroundColor: MaterialStateProperty.all<Color>(
      //     Colors.white,
      //   ),
      //   textStyle: MaterialStateProperty.all<TextStyle>(
      //     ThemeText.textTheme.headline3!,
      //   ),
      //   shape: MaterialStateProperty.all<OutlinedBorder>(
      //     RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(bigRadius),
      //     ),
      //   ),
      // ),
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
