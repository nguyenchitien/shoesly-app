import 'package:flutter/material.dart';

/*
100 Thin (Hairline)
200 ExtraLight (UltraLight)
300 Light
400 Normal
500 Medium
600 SemiBold (DemiBold)
700 Bold
800 ExtraBold (UltraBold)
900 Black (Heavy)
 */

class FontFamily {
  FontFamily._();

  static const String openSans = 'OpenSans';
}

class StylesText {
  StylesText._();

  static const headline900 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 48,
    fontFamily: FontFamily.openSans,
    height: 1.2,
  );

  static const headline800 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36,
    fontFamily: FontFamily.openSans,
    height: 1.2,
  );

  static const headline700 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    fontFamily: FontFamily.openSans,
    height: 1.2,
  );

  static const headline600 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    fontFamily: FontFamily.openSans,
    height: 1.2,
  );

  static const headline500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    fontFamily: FontFamily.openSans,
    height: 1.2,
  );

  static const headline400 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    fontFamily: FontFamily.openSans,
    height: 1.2,
  );

  static const headline300 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: FontFamily.openSans,
    height: 1.3,
  );

  static const headline200 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    fontFamily: FontFamily.openSans,
    height: 1.2,
  );

  static const headline100 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    fontFamily: FontFamily.openSans,
    height: 1.6,
  );

  static const bodyText300 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: FontFamily.openSans,
    height: 1.5,
  );

  static const bodyText200 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    fontFamily: FontFamily.openSans,
    height: 1.7,
  );

  static const bodyText100 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    fontFamily: FontFamily.openSans,
    height: 1.8,
  );
}
