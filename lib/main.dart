import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/Home%20Screen/home_screen.dart';
import 'package:food_recipe_app/View/Onboarding%20Screen/onboading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboardingscreen(),
    );
  }
}
