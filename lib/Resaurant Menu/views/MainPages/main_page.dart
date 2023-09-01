import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/colors/color.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/ChatPage/live_chat.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/FavouriteFoodPage/fav_foods.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/MenuPage/menu.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/Profilepage/profile_screen.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/homepage/home_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Mainpage extends StatefulWidget{
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> with TickerProviderStateMixin{
List pages=[
  const ChatScreen(),
  const ProfileScreen(),
  const Homeview(),
  const MenuScreen(),
  const FavouriteScreen()

];

    int curIndex=2;

  @override
  Widget build(BuildContext context ) {
    return MaterialApp(
      home: 
         Scaffold(
          body: pages[curIndex],
          bottomNavigationBar: GNav(
            onTabChange: (value) {
              setState(() {
                curIndex=value;
              });
            },
            tabBorderRadius: 100,
            tabBackgroundColor: Colors.grey,
            iconSize: 25,
            padding: const EdgeInsets.only(top: 25,bottom: 25,left: 16,right: 16),
            mainAxisAlignment: MainAxisAlignment.start,
            gap: 1,
            selectedIndex: curIndex,
            tabs: const [
              GButton(icon: Icons.chat_rounded,text: 'Live Chat',),
              GButton(icon: Icons.account_circle,text: 'Profile',),
              GButton(icon: Icons.home,text: 'Home',),
              GButton(icon: Icons.menu_book_outlined,text: 'Menu',),
              GButton(icon: Icons.favorite_border,text: 'Favourites',),

            ],

            ),
        ),
      
    );
  }
}