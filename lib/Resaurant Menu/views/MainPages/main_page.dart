import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/colors/color.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/ChatPage/live_chat.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/FavouriteFoodPage/fav_foods.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/MenuPage/menu.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/Profilepage/profile_screen.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/homepage/home_page.dart';

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
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: mainpage[1],
            iconSize: 30,
            elevation: 3,
            unselectedLabelStyle: TextStyle(color: mainpage[1]),
            selectedItemColor: mainpage[0],
            selectedIconTheme: IconThemeData(color: mainpage[0]),
            unselectedIconTheme: IconThemeData(color: mainpage[1]),
            currentIndex: curIndex,
            onTap: (value) {
              setState(() {
                curIndex=value;
              });
            },
            items:   const [
              BottomNavigationBarItem(label:'Live Chat' , icon: Icon(Icons.chat_rounded,),),
              BottomNavigationBarItem(label:'Profile' ,icon: Icon(Icons.account_circle,)),
              BottomNavigationBarItem(label:'Home' ,icon: Icon(Icons.home,)),
              BottomNavigationBarItem(label:'Menu' ,icon: Icon(Icons.restaurant_menu_outlined,)),
              BottomNavigationBarItem(label:'Favourites' ,icon: Icon(Icons.favorite,)),
            ]),
        ),
      
    );
  }
}