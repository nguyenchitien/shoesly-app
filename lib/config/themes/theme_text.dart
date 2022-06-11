import 'package:flutter/material.dart';
import 'package:shoesly/config/themes/app_colors.dart';
import 'package:shoesly/config/themes/styles_text.dart';

class ThemeText {
  ThemeText._();

  static TextTheme textTheme = const TextTheme(
    headline1: StylesText.headline900,
    headline2: StylesText.headline800,
    headline3: StylesText.headline700,
    headline4: StylesText.headline600,
    headline5: StylesText.headline500,
    headline6: StylesText.headline400,
    bodyText1: StylesText.bodyText300,
    bodyText2: StylesText.bodyText200,
    subtitle1: StylesText.bodyText100,
  );

  static TextTheme primaryTextTheme = textTheme.apply(
    displayColor: AppColors.neutral400,
    bodyColor: AppColors.neutral400,
  );
}
