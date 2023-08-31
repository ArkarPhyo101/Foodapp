import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant Menu/colors/color.dart';
import '../../widgets/Nextpage.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite ,
        decoration:  const BoxDecoration(

          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.transparent ,BlendMode.difference),
            fit: BoxFit.fill,
            image: AssetImage('assets/foodbackgroud.jpg'))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const SizedBox(
              height: 200,
            ),
            Text('Yummies',style: TextStyle(color: firstscreen[0] ,fontWeight: FontWeight.w800, fontSize: 55),),
            Text('Tasty meat delivered to\n       your deepstep',style: TextStyle(color:firstscreen[0] ,fontSize: 20,fontWeight: FontWeight.w500),),

            
            const Padding(
              padding: EdgeInsets.only(top:60.0),
              child: Nextpage(),
            ),
            
            
            
          
          ],
        ),
      )
    );
  }
}

