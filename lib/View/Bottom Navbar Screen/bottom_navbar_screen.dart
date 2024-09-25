import 'package:flutter/material.dart';
import 'package:food_recipe_app/View/Bookmarks%20Screen/bookmarks_screen.dart';
import 'package:food_recipe_app/View/Create%20Recipee%20Screen/create_recipee_screen.dart';
import 'package:food_recipe_app/View/Home%20Screen/home_screen.dart';
import 'package:food_recipe_app/View/Notification%20Screen/notifications_screen.dart';
import 'package:food_recipe_app/View/Profile%20Screen/profile_screen.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List Screen = [
    HomeScreen(),
    BookmarksScreen(),
    NotificationsScreen(),
    ProfileScreen()
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateRecipeeScreen()));
        },
        shape: CircleBorder(),
        backgroundColor: ColorConstants.primaryColor,
        child: Icon(
          Icons.add,
          color: ColorConstants.mainwhite,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstants.primaryColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                activeIcon: Icon(Icons.bookmark),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                activeIcon: Icon(Icons.notifications),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                activeIcon: Icon(Icons.person_2),
                label: ""),
          ]),
      body: Screen[selectedindex],
    );
  }
}
