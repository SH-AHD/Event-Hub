import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme() => ThemeData(
    fontFamily: AppFonts.airbnbCereal,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.whiteColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
    ),
  );
}
