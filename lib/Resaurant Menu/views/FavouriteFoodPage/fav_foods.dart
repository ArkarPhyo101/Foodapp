import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/colors/color.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/models/FavouriteFood/favourite_food.dart';
import 'package:hotel_restaurant/Resaurant Menu/models/FavouriteFood/favourite_food.dart';
import '../../models/MenuItems/items.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key,});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}



class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: favourite[3],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: favourite[2],
                  )),
              Text(
                'Fovourit Foods',
                style: TextStyle(color: favourite[2]),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: favourite[2],
                  ))
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: fooditems.length ,
          itemBuilder: (context, index) => Card(
            elevation: 10,
            color: favourite[6],
            child: ListTile(
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('${fooditems[index].photo}'),
                    width: 100,
                    height: 60,
                  ),
                  Text('${fooditems[index].name}')
                ],
              ),
            ),
          ),
        ));
  }
}
