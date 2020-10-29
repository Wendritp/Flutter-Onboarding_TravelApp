import 'package:flutter/material.dart';
import 'package:onboarding_travelapp/pages/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
