import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/Home%20Screen/Widgets/popular_category_card.dart';
import 'package:food_recipe_app/View/global%20widgets/custom_video_cards.dart';
import 'package:food_recipe_app/dummy_db.dart';
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
        backgroundColor: ColorConstants.mainwhite,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //# section 1 - title section
              titlesection(),
              //# section 2 - trending now section
              _trendingNowSection(),
              //# section 3 - popular category section
              _popularcategorysection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularcategorysection() {
    return DefaultTabController(
      length: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular Category",
                style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TabBar(
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: TextStyle(color: ColorConstants.mainwhite),
                unselectedLabelColor: ColorConstants.primaryColor,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                dividerHeight: 0,
                indicator: BoxDecoration(
                    color: ColorConstants.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                tabs: [
                  Tab(
                    text: "salad",
                  ),
                  Tab(
                    text: "Breakfast",
                  ),
                  Tab(
                    text: "Appetizer",
                  ),
                  Tab(
                    text: "noodle",
                  ),
                  Tab(
                    text: "lunch",
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 231,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PopularCategoryCard(
                        title: DummyDb2.popularcategorylist[index]["title"],
                        time: DummyDb2.popularcategorylist[index]["time"],
                        itemimage: DummyDb2.popularcategorylist[index]["itemimage"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: DummyDb2.popularcategorylist.length),
            )
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
        SizedBox(
          height: 270,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Customvideocard(
                    rating: DummyDb.trendingNowList[index]["rating"],
                    duration: DummyDb.trendingNowList[index]["duration"],
                    title: DummyDb.trendingNowList[index]["title"],
                    username: DummyDb.trendingNowList[index]["username"],
                    thumbnail: DummyDb.trendingNowList[index]["thumbnail"],
                    dp: DummyDb.trendingNowList[index]["dp"],
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 16),
              itemCount: DummyDb.trendingNowList.length),
        ),
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
                  color: ColorConstants.greyshade1,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.greyshade1,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.greyshade1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
