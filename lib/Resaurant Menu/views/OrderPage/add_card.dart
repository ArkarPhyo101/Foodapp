import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/colors/color.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/models/PopularFood/popular_food.dart';

class AddCard extends StatefulWidget {
  const AddCard(
      {super.key,
      required this.cardphoto,
      required this.cardtext,
      required this.price});

  final String cardphoto;
  final String cardtext;
  final dynamic price;

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  int curItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: orderPage[2],
        backgroundColor: orderPage[3],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: orderPage[2],
                ))
          ],
        ),
      ),
      body: Container(
        color: orderPage[3],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(widget.cardphoto),
                  width: double.maxFinite,
                  height: 250,
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: orderPage[1],
                          blurRadius: 1,
                          blurStyle: BlurStyle.normal,
                          offset: Offset.zero,
                          spreadRadius: 1)
                    ], color: orderPage[3], shape: BoxShape.circle),
                    height: 50,
                    width: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              size: 40,
                              color: orderPage[0],
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.maxFinite,
              height: 1,
              color: orderPage[2],
            ),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset.zero,
                    blurRadius: 3,
                    spreadRadius: 1,
                    blurStyle: BlurStyle.outer)
              ]),
              height: 200,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      widget.cardtext,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'N${widget.price}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2,
                                blurStyle: BlurStyle.outer,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: orderPage[4]),
                        width: 130,
                        height: 37,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    if (curItem > 0) {
                                      curItem--;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 25,
                                )),
                            Text(
                              '${curItem}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    curItem++;
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 25,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        overflow: TextOverflow.fade,
                        maxLines: 10,
                        text: TextSpan(
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: orderPage[2]),
                            text: 'Description\n',
                            children: [
                              TextSpan(
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: orderPage[2]),
                                  text:
                                      'yfyflyufldhfsdhfdfsdgjsgdjfgsdfgsjdgfskdjg  \nsjdgf jsf sjg fsjgfsjgfsjsgj js jsjfsjf'),
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Recommended Sides',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: popularFood.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return 
                        Container(
                          margin:
                              const EdgeInsets.only(left: 8, top: 4, bottom: 4),
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(popularFood[index].foodphoto),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: homepage[2],
                                  offset: Offset.zero,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                color:orderPage[3] ,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:  Radius.circular(10))
                                ),
                                height: 60,
                                width: double.maxFinite,
                                child: Column(
                                  children: [
                                    Text('')
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                       
                     
                  }),
            )
          ],
        ),
      ),
    );
  }
}
