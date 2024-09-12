import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class ingrediantsCard extends StatelessWidget {
  String name;
  String img;
  String quantity;
  ingrediantsCard({
    this.haveArrow = false,
    this.cooktime = "",
    this.serves = "",
    required this.quantity,
    required this.name,
    required this.img,
    super.key,
  });
  final bool haveArrow;
  final String serves;
  final String cooktime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
      child: Container(
        height: 76,
        width: 332,
        decoration: BoxDecoration(
          color: ColorConstants.greyshade3,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
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
                          image: NetworkImage(img), fit: BoxFit.cover)),
                ),
              ),
              Text(
                name,
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              haveArrow
                  ? SizedBox()
                  : Text(
                      "$quantity g",
                      style: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
              haveArrow
                  ? Text(
                      "$serves",
                      style: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  : SizedBox(),
              haveArrow
                  ? Text(
                      "$cooktime ",
                      style: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  : SizedBox(),
              haveArrow
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(Icons.arrow_forward_outlined),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
