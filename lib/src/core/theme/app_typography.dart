import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static final headline1 = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold));
  static final headline2 = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
  static final headline3 = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
  static final headline4 = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
  static final headline5 = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold));
  static final headline6 = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold));
  static final bodyLarge = GoogleFonts.nunitoSans(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400));
  static final bodyMedium = GoogleFonts.nunitoSans(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400));
  static final bodySmall = GoogleFonts.nunitoSans(textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400));
  static final buttonLarge = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600));
  static final buttonMedium = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600));
  static final buttonSmall = GoogleFonts.manrope(textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600));
}
