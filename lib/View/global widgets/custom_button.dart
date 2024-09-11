import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class Custombutton extends StatelessWidget {
  String text;
  void Function()? onButtonPressed;
  Custombutton({
    required this.text,
    this.onButtonPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onButtonPressed,
        style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(ColorConstants.mainwhite),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
            minimumSize: WidgetStatePropertyAll(Size(77, 45)),
            backgroundColor:
                WidgetStatePropertyAll(ColorConstants.primaryColor)),
        child: Text(text));
  }
}
