import 'package:flutter/material.dart';

abstract class AppTypography {
  static const headline1 = TextStyle(fontFamily: 'Manrope', fontSize: 40, fontWeight: FontWeight.bold);
  static const headline3 = TextStyle(fontFamily: 'Manrope', fontSize: 24, fontWeight: FontWeight.bold);
  static const headline2 = TextStyle(fontFamily: 'Manrope', fontSize: 28, fontWeight: FontWeight.bold);
  static const headline4 = TextStyle(fontFamily: 'Manrope', fontSize: 16, fontWeight: FontWeight.bold);
  static const headline5 = TextStyle(fontFamily: 'Manrope', fontSize: 14, fontWeight: FontWeight.bold);
  static const headline6 = TextStyle(fontFamily: 'Manrope', fontSize: 12, fontWeight: FontWeight.bold);
  static const bodyLarge = TextStyle(fontFamily: 'Nunito Sans', fontSize: 16, fontWeight: FontWeight.w400);
  static const bodyMedium = TextStyle(fontFamily: 'Nunito Sans', fontSize: 14, fontWeight: FontWeight.w400);
  static const bodySmall = TextStyle(fontFamily: 'Nunito Sans', fontSize: 12, fontWeight: FontWeight.w400);
  static const buttonLarge = TextStyle(fontFamily: 'Manrope', fontSize: 16, fontWeight: FontWeight.w600);
  static const buttonMedium = TextStyle(fontFamily: 'Manrope', fontSize: 14, fontWeight: FontWeight.w600);
  static const buttonSmall = TextStyle(fontFamily: 'Manrope', fontSize: 12, fontWeight: FontWeight.w600);
}
