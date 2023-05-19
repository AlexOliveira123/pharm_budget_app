import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static final theme = ThemeData(
    scaffoldBackgroundColor: AppColors.white100,
    appBarTheme: AppBarTheme(color: AppColors.white100, elevation: 0),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white100,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grey60,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.primary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: AppColors.accent,
      onError: AppColors.accent,
      background: AppColors.white100,
      onBackground: AppColors.white100,
      surface: AppColors.darkBlue,
      onSurface: AppColors.darkBlue,
    ),
  );
}
