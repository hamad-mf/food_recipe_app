import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class CustomProfileDataWidget extends StatelessWidget {
  String text1;
  String text2;
  CustomProfileDataWidget(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$text1',
          style: TextStyle(
              color: ColorConstants.greyshade1,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        SizedBox(height: 2),
        Text(
          '$text2',
          style: TextStyle(
              color: ColorConstants.mainblack,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
