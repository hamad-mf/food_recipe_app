import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/utils/constants/image_constants.dart';

class ingrediantsCard extends StatelessWidget {
  const ingrediantsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 12),
      child: Container(
        height: 76,
        width: 332,
        decoration: BoxDecoration(
          color: ColorConstants.greyshade3,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 12, bottom: 12, right: 16),
              child: Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                    color: ColorConstants.mainwhite,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    image: DecorationImage(
                        image: AssetImage(ImageConstants.INGRDNT_NOODLES))),
              ),
            ),
            Text(
              "Bread",
              style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 150,
            ),
            Text(
              "200g",
              style: TextStyle(
                  color: ColorConstants.greyshade1,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
