import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/Recipee%20details%20Screen/recipee_details_screen.dart';
import 'package:food_recipe_app/View/global%20widgets/custom_video_cards.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.mainwhite,
          surfaceTintColor: Colors.transparent,
          title: Text(
            "Saved recipes",
            style: TextStyle(
                color: ColorConstants.mainblack, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(color: ColorConstants.mainwhite),
              unselectedLabelColor: ColorConstants.primaryColor,
              dividerHeight: 0,
              indicator: BoxDecoration(
                  color: ColorConstants.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(
                  text: "Video",
                ),
                Tab(
                  text: "Recipee",
                ),
              ]),
        ),
        body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            itemBuilder: (context, index) => Customvideocard(
                  onCardTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecipeeDetailsScreen(
                                  title: DummyDb.trendingNowList[index]
                                      ["title"],
                                  thumbnail: DummyDb.trendingNowList[index]["thumbnail"],
                                )));
                  },
                  width: double.infinity,
                  rating: DummyDb.trendingNowList[index]["rating"],
                  duration: DummyDb.trendingNowList[index]["duration"],
                  title: DummyDb.trendingNowList[index]["title"],
                  username: DummyDb.trendingNowList[index]["username"],
                  thumbnail: DummyDb.trendingNowList[index]["thumbnail"],
                  dp: DummyDb.trendingNowList[index]["dp"],
                ),
            separatorBuilder: (context, index) => SizedBox(height: 16),
            itemCount: DummyDb.trendingNowList.length),
      ),
    );
  }
}
