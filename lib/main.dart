import 'dart:io';

import 'package:event_hub/core/styles/themes.dart';
import 'package:event_hub/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme(),
      builder: (context, child) {
        return SafeArea(top: false, bottom: Platform.isAndroid, child: child!);
      },
      home: SplashScreen(),
    );
  }
}
