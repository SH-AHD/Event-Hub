import 'package:event_hub/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';

class AppThemes{
  static ThemeData lightTheme()=> ThemeData(
fontFamily: AppFonts.airbnbCereal,

floatingActionButtonTheme: FloatingActionButtonThemeData(
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,

  ),
    
  );
} 