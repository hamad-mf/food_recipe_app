import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/global%20widgets/custom_video_cards.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //# section 1 - title section
            titlesection(),
            //# section 2 - trending now section
            _trendingNowSection()
          ],
        ),
      ),
    );
  }

  Column _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
          child: Row(
            children: [
              Text(
                "Trending Now 🔥",
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              Spacer(),
              Text(
                "See All",
                style: TextStyle(
                    color: ColorConstants.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: ColorConstants.primaryColor,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Customvideocard()
      ],
    );
  }

  Column titlesection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: "search reciepes",
              hintStyle: TextStyle(
                  color: ColorConstants.lightgrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.lightgrey,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.lightgrey),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
