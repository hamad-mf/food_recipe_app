import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/Create%20Recipee%20Screen/create_recipee_screen.dart';

import 'package:food_recipe_app/View/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
