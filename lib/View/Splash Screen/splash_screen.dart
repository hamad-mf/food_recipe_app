import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/Onboarding%20Screen/onboading_screen.dart';
import 'package:food_recipe_app/utils/constants/image_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onboardingscreen()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(ImageConstants.SPLASH_LOGO)),
    );
  }
}
