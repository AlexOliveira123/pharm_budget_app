import 'dart:ui';

abstract class AppTypography {
  static final headline1 = TextStyle(fontFamily: 'Manrope', fontSize: 40, fontWeight: FontWeight.bold);
  static final headline2 = TextStyle(fontFamily: 'Manrope', fontSize: 28, fontWeight: FontWeight.bold);
  static final headline3 = TextStyle(fontFamily: 'Manrope', fontSize: 24, fontWeight: FontWeight.bold);
  static final headline4 = TextStyle(fontFamily: 'Manrope', fontSize: 16, fontWeight: FontWeight.bold);
  static final headline5 = TextStyle(fontFamily: 'Manrope', fontSize: 14, fontWeight: FontWeight.bold);
  static final headline6 = TextStyle(fontFamily: 'Manrope', fontSize: 12, fontWeight: FontWeight.bold);
  static final bodyLarge = TextStyle(fontFamily: 'Nunito Sans', fontSize: 16, fontWeight: FontWeight.w400);
  static final bodyMedium = TextStyle(fontFamily: 'Nunito Sans', fontSize: 14, fontWeight: FontWeight.w400);
  static final bodySmall = TextStyle(fontFamily: 'Nunito Sans', fontSize: 12, fontWeight: FontWeight.w400);
  static final buttonLarge = TextStyle(fontFamily: 'Manrope', fontSize: 16, fontWeight: FontWeight.w600);
  static final buttonMedium = TextStyle(fontFamily: 'Manrope', fontSize: 14, fontWeight: FontWeight.w600);
  static final buttonSmall = TextStyle(fontFamily: 'Manrope', fontSize: 12, fontWeight: FontWeight.w600);
}
