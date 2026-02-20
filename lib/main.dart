import 'package:event_hub/features/Auth/Pages/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(), // Scaffold(
      //   body: Center(
      //     child: Text('Hello Event Hub Team!'),
      //   ),
      // ),
      theme: ThemeData(fontFamily: 'Airbnb'),
    );
  }
}
