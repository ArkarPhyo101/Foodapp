import 'package:flutter/material.dart';
import '../colors/color.dart';
import '../views/homepage/home_page.dart';
import '../views/loginPage/login_view.dart';
import 'package:hotel_restaurant/Resaurant Menu/views/MainPages/main_page.dart';


List<String>texts=<String>[
  'Get Starterd',
  'Login',
  'Create Account'

];


class Nextpage extends StatelessWidget {
  const Nextpage({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> const LoginPage()));
    },
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
      minimumSize: const Size(200, 40),
      backgroundColor: firstscreen[2],
    ), 
    child:  Text('${texts[0]}')              
            
    );
  }
}

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Mainpage()));
    },
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
      minimumSize: const Size(200, 40),
      backgroundColor: firstscreen[2],
    ), 
    child:  Text('${texts[1]}')              
            
    );
  }
}