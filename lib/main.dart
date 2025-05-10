import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      initialRoute: "/home",
      routes: {
        "/":(context)=>Loginpage(),
        "/login":(context)=>Loginpage(),
        "/home":(context)=>HomePage()
      },
     

    );
  }
}
