import 'package:flutter/material.dart';

import 'package:project/routes/route.dart';
import 'package:project/screens/homepage.dart';
import 'package:project/screens/login.dart';
import 'package:project/screens/registerpage.dart';
import 'package:project/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splascScreenRoute,
      routes: {
        MyRoutes.splascScreenRoute:(context)=>Splashscreen(),
        MyRoutes.loginScreenRoute:(contect)=>Login(),
        MyRoutes.homeScreenRoute:(context)=>Homepage(),
        MyRoutes.registerScreenRoute:(context)=>Registerpage()
      },
   

    );
  }
}
