import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/global%20widgets/ingrediants_card.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/utils/constants/image_constants.dart';

class RecipeeDetailsScreen extends StatelessWidget {
  String title;
  String thumbnail;
  String rating;
  String dp;
  String username;

  RecipeeDetailsScreen(
      {required this.thumbnail,
      required this.dp,
      required this.username,
      required this.rating,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstants.mainwhite,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 9, bottom: 12),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 200,
                            width: 335,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                image: DecorationImage(
                                    image: NetworkImage(thumbnail),
                                    fit: BoxFit.cover)),
                            child: Center(
                              child: CircleAvatar(
                                maxRadius: 24,
                                backgroundColor:
                                    ColorConstants.lightblack.withOpacity(0.3),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: ColorConstants.mainwhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 0)),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: ColorConstants.starcolor,
                          ),
                          Text(
                            rating,
                            style: TextStyle(
                                color: ColorConstants.mainblack,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "(300 Reviews)",
                            style: TextStyle(color: ColorConstants.greyshade1),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, top: 13),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20.5,
                              backgroundImage: NetworkImage(dp),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    username,
                                    style: TextStyle(
                                        color: ColorConstants.mainblack,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color: ColorConstants.primaryColor,
                                      ),
                                      Text("bali, indonesia")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 78,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    foregroundColor: WidgetStatePropertyAll(
                                        ColorConstants.mainwhite),
                                    shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    minimumSize:
                                        WidgetStatePropertyAll(Size(77, 45)),
                                    backgroundColor: WidgetStatePropertyAll(
                                        ColorConstants.primaryColor)),
                                child: Text("Follow"))
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ingredients",
                      style: TextStyle(
                          color: ColorConstants.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " 5 item",
                      style: TextStyle(
                        color: ColorConstants.greyshade1,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                  itemBuilder: (context, index) => ingrediantsCard(),
                  separatorBuilder: (context, index) => SizedBox(height: 0),
                  itemCount: 5),
            ],
          ),
        ),
      ),
    );
  }
}
