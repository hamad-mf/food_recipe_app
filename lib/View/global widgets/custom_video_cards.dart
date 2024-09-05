import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class Customvideocard extends StatelessWidget {
  final String rating;
  final String duration;
  final String title;
  final String username;
  final String thumbnail;
  final String dp;

  const Customvideocard({
    required this.rating,
    required this.duration,
    required this.title,
    required this.username,
    required this.thumbnail,
    required this.dp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 180,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                    image: NetworkImage(thumbnail), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConstants.lightblack.withOpacity(0.3)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorConstants.mainwhite,
                          ),
                          Text(
                            rating,
                            style: TextStyle(
                                color: ColorConstants.mainwhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.bookmark_outline),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: ColorConstants.lightblack.withOpacity(0.3),
                  child: Icon(
                    Icons.play_arrow,
                    color: ColorConstants.mainwhite,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorConstants.lightblack.withOpacity(0.3)),
                    child: Text(
                      duration,
                      style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Icon(Icons.more_horiz)
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                    dp),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "By $username",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: ColorConstants.greyshade2),
              )
            ],
          )
        ],
      ),
    );
  }
}
