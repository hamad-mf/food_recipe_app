import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/global%20widgets/custom_video_cards.dart';
import 'package:food_recipe_app/dummy_db.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Text(
                "Saved Recipies",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  
                  itemBuilder: (context, index) => Customvideocard(
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
          ],
        ),
      ),
    );
  }
}
