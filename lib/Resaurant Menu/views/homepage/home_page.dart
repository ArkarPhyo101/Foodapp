import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/models/SpecialOffer/special.dart';
import '../../colors/color.dart';
import '../../widgets/SpecialOffer/special_offer.dart';
import 'package:hotel_restaurant/Resaurant Menu/models/PopularFood/popular_food.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    TabController tabcontroler = TabController(length: 4, vsync: this);
    return MaterialApp(
      home: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            iconTheme: IconThemeData(color: mainpage[3]),
            backgroundColor: mainpage[2],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart))
              ],
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: _controller,
            child: Container(
              color: homepage[3],
              height: 637,
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(color: homepage[2], fontSize: 20),
                            text: 'Hello\n',
                            children: [
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: homepage[2]),
                              text: 'What would you like to\n',
                              children: [
                                TextSpan(
                                    style: TextStyle(color: homepage[0]),
                                    text: 'eat?')
                              ])
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardAppearance: Brightness.light,
                      decoration: InputDecoration(
                        focusColor: homepage[1],
                        prefixIcon: Icon(
                          Icons.search,
                          color: homepage[1],
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.horizontal(),
                            borderSide: BorderSide(color: homepage[2])),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.horizontal(),
                            borderSide: BorderSide(color: homepage[2])),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.horizontal(),
                            borderSide: BorderSide(color: homepage[2])),
                        contentPadding: const EdgeInsets.symmetric(vertical: 9),
                        hintText: 'Enter a dish name e.g Egusi soup',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: homepage[2],
                    indent: 1,
                    endIndent: 1,
                  ),
                  TabBar(
                      indicatorColor: homepage[0],
                      labelColor: homepage[4],
                      controller: tabcontroler,
                      unselectedLabelColor: homepage[2],
                      tabs: const [
                        Tab(
                          text: 'Meals',
                        ),
                        Tab(
                          text: 'Sides',
                        ),
                        Tab(
                          text: 'Snacks',
                        ),
                        Tab(
                          text: 'Drinks',
                        ),
                      ]),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                    child: SizedBox(
                      height: 193,
                      width: 350,
                      child:
                          TabBarView(controller: tabcontroler, children: const [
                        Specialoffer(),
                        Specialoffer(),
                        Specialoffer(),
                        Specialoffer(),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Popular Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'See Full Menu >',
                                  style: TextStyle(color: homepage[0]),
                                ))
                          ],
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
                          return Container(
                            margin: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        popularFood[index].foodphoto),
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite_border))
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
