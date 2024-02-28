import 'package:flutter/material.dart';
import 'package:project/utility/coffee.dart';

class MyStyle {
  Color color_1 = const Color(0xFFB52617); //theme
  Color color_2 = const Color(0xFFC67C4E); //
  Color color_3 = const Color(0xFFF0F5FA); //second
  Color color_4 = const Color(0xFFFFFFFF);
  Color color_5 = const Color(0xffc5c8cb); //main

  AppBar BuildBar(BuildContext context, String title) => AppBar(
        backgroundColor: MyStyle().color_4, // Set the background color
        // elevation: 100.0, // Set the elevation/shadow
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // IconButton(
            //   icon: Icon(Icons.arrow_back_ios_new_sharp),
            //   color: MyStyle().color_1, // Set button color to red
            //   onPressed: () {
            //     // Add back button action
            //     Navigator.pop(context);
            //   },
            // ),
            // Spacer(),
            
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Spacer(),
           
          ],
        ),
      );

  ClipRRect BuildBotBar(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(20), // Adjust the radius for a round shape
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor:
        // Colors.transparent, // Set the background color to transparent
        elevation: 5.0, // Remove the shadow
        selectedItemColor: MyStyle().color_1, // Set the selected item color
        unselectedItemColor: Colors.grey, // Set the unselected item color
        showSelectedLabels: false, // Hide labels for the selected item
        showUnselectedLabels: false, // Hide labels for unselected items
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Add home button action
                // Navigator.pushNamed(context, '/home');
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                // Add fav button action
                Navigator.pushNamed(context, '/fav');
              },
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Add cart button action
                Navigator.pushNamed(context, '/cart');
              },
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Add notification button action
                Navigator.pushNamed(context, '/noti');
              },
            ),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }

  MyStyle();
}
