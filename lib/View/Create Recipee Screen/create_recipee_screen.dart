import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/global%20widgets/custom_button.dart';
import 'package:food_recipe_app/View/global%20widgets/ingrediants_card.dart';

import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipeeScreen extends StatefulWidget {
  const CreateRecipeeScreen({super.key});

  @override
  State<CreateRecipeeScreen> createState() => _CreateRecipeeScreenState();
}

class _CreateRecipeeScreenState extends State<CreateRecipeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleSection(),
              _ingredientsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Column _ingredientsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ingrediantsCard(
            haveArrow: true,
            serves: "01",
            quantity: "",
            name: "Serves",
            img:
                "https://thumbs.dreamstime.com/z/red-flat-icon-group-people-isolated-white-background-red-flat-icon-group-people-isolated-white-background-207921922.jpg?ct=jpeg"),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: ingrediantsCard(
              haveArrow: true,
              cooktime: "45 min",
              quantity: "",
              name: "Cooktime",
              img:
                  "https://img.freepik.com/free-vector/stopwatch-red-flat-colour_78370-7264.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Text(
            "Ingredients",
            style: TextStyle(
                color: ColorConstants.mainblack,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 16),
          child: Row(
            children: [
              SizedBox(
                width: 164,
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Item name",
                      hintStyle: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.greyshade1),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 115,
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Quantity",
                      hintStyle: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.greyshade1),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                HugeIcons.strokeRoundedPlusSignSquare,
                size: 24,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 16),
          child: Row(
            children: [
              SizedBox(
                width: 164,
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Item name",
                      hintStyle: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.greyshade1),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 115,
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Quantity",
                      hintStyle: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.greyshade1),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                HugeIcons.strokeRoundedPlusSignSquare,
                size: 24,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 16),
          child: Row(
            children: [
              SizedBox(
                width: 164,
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Item name",
                      hintStyle: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.greyshade1),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 115,
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Quantity",
                      hintStyle: TextStyle(
                          color: ColorConstants.greyshade1,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.greyshade1),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                HugeIcons.strokeRoundedMinusSignSquare,
                size: 24,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 20, bottom: 12),
          child: Text(
            "+ Add new Ingredient",
            style: TextStyle(
                color: ColorConstants.mainblack,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 16, right: 20, bottom: 50),
          child: SizedBox(
              width: 335,
              height: 54,
              child: Custombutton(text: "Save my recipes")),
        ),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create recipe",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
          child: Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'))),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Center(
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: ColorConstants.lightblack.withOpacity(0.3),
                    child: Icon(
                      Icons.play_arrow,
                      color: ColorConstants.mainwhite,
                    ),
                  ),
                )),
            Positioned(
              right: 6,
              top: 5,
              child: CircleAvatar(
                backgroundColor: ColorConstants.mainwhite,
                radius: 16,
                child: Icon(
                  Icons.edit,
                  color: ColorConstants.primaryColor,
                ),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Bento lunch box ideas for work",
                hintStyle: TextStyle(
                    color: ColorConstants.lightblack,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.primaryColor),
                    borderRadius: BorderRadius.circular(12))),
          ),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
