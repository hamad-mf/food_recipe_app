import 'package:flutter/material.dart';

import 'package:food_recipe_app/utils/constants/color_constants.dart';

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
        child: Column(
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
                        backgroundColor:
                            ColorConstants.lightblack.withOpacity(0.3),
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
                        borderSide:
                            BorderSide(color: ColorConstants.primaryColor),
                        borderRadius: BorderRadius.circular(12))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
