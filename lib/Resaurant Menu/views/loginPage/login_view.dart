import 'package:flutter/material.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/colors/color.dart';
import 'package:hotel_restaurant/Resaurant%20Menu/widgets/Nextpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ScrollController scrol = ScrollController();
    TabController tabController = TabController(length: 2, vsync: this);

    return MaterialApp(
      home: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          body: SingleChildScrollView(
            controller: scrol,
            child: Container(
              height: 785,
              width: double.maxFinite,
              color: loginpage[0],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(image: AssetImage('assets/food.jpg')),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        TabBar(
                          splashFactory: NoSplash.splashFactory,
                            controller: tabController,
                            indicatorColor: loginpage[2],
                            tabs: [
                              Tab(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: loginpage[2],
                                      fontSize: 29,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: loginpage[2],
                                      fontSize: 29,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            height: 470,
                            width: double.maxFinite,
                            child:
                                TabBarView(controller: tabController, children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'E-mail Address',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.all(8),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  const BorderSide(width: 5),
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Enter Password',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.all(8),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  const BorderSide(width: 5),
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text('Forgot Password?')),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 82),
                                    child: Login(),

                                    
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:  [
                                      

                                       const Text('___________________ OR __________________'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset('assets/googleicon.png',width: 40,height: 40,),
                                            Image.asset('assets/facebookicon.png',width: 44,height: 44,),
                                            Image.asset('assets/twittericon.png',width: 44,height: 44,),
                                          
                                         
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Full Name',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.all(8),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  const BorderSide(width: 5),
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'E-mail Address',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.all(8),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  const BorderSide(width: 5),
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Create Password',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.all(8),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  const BorderSide(width: 5),
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 40),
                                    child: Login(),
                                  ),
                                     Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:  [
                                      

                                       const Text('___________________ OR __________________'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Image.asset('assets/googleicon.png',width: 40,height: 40,),
                                            Image.asset('assets/facebookicon.png',width: 44,height: 44,),
                                            Image.asset('assets/twittericon.png',width: 44,height: 44,),
                                          
                                         
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
