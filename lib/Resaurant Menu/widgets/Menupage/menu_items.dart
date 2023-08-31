import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/colors/color.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/models/AddCard/card_model.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/models/FavouriteFood/favourite_food.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/models/PopularFood/popular_food.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/FavouriteFoodPage/fav_foods.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/views/OrderPage/add_card.dart';
import '../../models/MenuItems/items.dart';
import 'package:hotel_restaurant/Resaurant Menu/models/FavouriteFood/favourite_food.dart';

class MenuGridview extends StatefulWidget {
  const MenuGridview({
    super.key,
  });

  @override
  State<MenuGridview> createState() => _MenuGridviewState();
}

class _MenuGridviewState extends State<MenuGridview> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: menuitems.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset.zero)
                ],
                color: menupage[3],
              ),
              height: 300,
              width: 300,
              child: Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        
                        onPressed: () {
                          setState(() {
                            menuitems[index].icon =!menuitems[index].icon;
                            menuitems[index].icon==false?
                             fooditems.add(Favourite(photo: menuitems[index].menuPhotos, name: menuitems[index].text, )):
                             fooditems.removeAt(index);                             
                          });
                        },
                        icon: menuitems[index].icon == false
                            ? 
                            Icon(
                                Icons.favorite,
                                color: menupage[4],
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: menupage[4],
                              )),
                  ],
                ),
                Positioned(
                  top: 6,
                  child: Container(
                    width: 150,
                    height: 130,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(menuitems[index].menuPhotos),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: InkWell(
                     onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(  context) =>
              AddCard(cardphoto: menuitems[index].menuPhotos, cardtext: menuitems[index].text, price: menuitems[index].price,  ) ));
             
            },
                    child: Container(
                      width: 150,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: menupage[3]),
                          child: Column(
                            children: [
                              Text(menuitems[index].text),
                              Text('N ${menuitems[index].price}')
                            ],
                          ),
                    ),
                  ),
                ),
              ]),
            ),
          
        );
      },
    );
  }
}
