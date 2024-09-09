import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class RecipeeDetailsScreen extends StatelessWidget {
  String title;
  String thumbnail;

  RecipeeDetailsScreen(
      {required this.thumbnail, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
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
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 9, bottom: 90),
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
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
