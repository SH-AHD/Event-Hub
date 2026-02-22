import 'package:event_hub/core/styles/themes.dart';
import 'package:event_hub/features/auth/Pages/reset_password.dart';
import 'package:event_hub/features/auth/Pages/sign_in.dart';
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
      // home:HomeScreen(),
      home: SignIn(),

      //home: ResetPassword(),
    );
  }
}
