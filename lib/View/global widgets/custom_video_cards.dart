import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class Customvideocard extends StatelessWidget {
  const Customvideocard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 180,
      width: 280,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(13),
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/955137/pexels-photo-955137.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              fit: BoxFit.cover)),
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
                      "4,5",
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
                "15:10",
                style: TextStyle(
                    color: ColorConstants.mainwhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}