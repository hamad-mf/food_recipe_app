import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class PopularCategoryCard extends StatelessWidget {
  final String title;
  final String time;
  final String itemimage;

  const PopularCategoryCard({
    required this.itemimage,
    required this.time,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(12),
            height: 176,
            decoration: BoxDecoration(
              color: ColorConstants.greyshade3,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                              color: ColorConstants.greyshade1,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "$time Mins",
                          style: TextStyle(
                              color: ColorConstants.mainblack,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstants.mainwhite,
                      child: Icon(
                        Icons.bookmark_add,
                        size: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            right: 0,
            left: 0,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(itemimage),
            ))
      ],
    );
  }
}
