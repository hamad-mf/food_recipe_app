import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/Bottom%20Navbar%20Screen/bottom_navbar_screen.dart';

import 'package:food_recipe_app/utils/constants/image_constants.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _buildBackgroundImage(),
            _buildHeaderSection(),
            _buildGradientSection(context),
          ],
        ),
      ),
    );
  }

  Positioned _buildHeaderSection() {
    return Positioned(
      right: 0,
      left: 0,
      top: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 16,
          ),
          SizedBox(
            width: 10,
          ),
          // Text(
          //   "data",
          //   style: TextStyle(color: Colors.white),
          // )

          RichText(
              text: TextSpan(
                  text: "60k+",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  children: [
                TextSpan(
                    text: " Premium recipes",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16))
              ]))
        ],
      ),
    );
  }

  Widget _buildGradientSection(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 60),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, ColorConstants.mainblack],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Let’s Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.mainwhite),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Find best recipes for cooking",
              style: TextStyle(
                  color: ColorConstants.mainwhite,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavbarScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: ColorConstants.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Start cooking",
                      style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: ColorConstants.mainwhite,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.ONBOARDING_SCREEN_BG))),
    );
  }
}
