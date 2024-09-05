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
            height: 176,
            decoration: BoxDecoration(
              color: ColorConstants.greyshade3,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Text(
                    "$title",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.mainblack,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Time",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.greyshade1),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$time Mins",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: ColorConstants.mainblack,
                          )),
                      Icon(Icons.bookmark_outline)
                    ],
                  ),
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
