import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/routes/route.dart';
import 'package:velocity_x/velocity_x.dart';

class Splashscreen extends StatefulWidget {

  

  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();

  
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, MyRoutes.loginScreenRoute);
    });
    
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(child: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "MY NOTES".text.xl2.bold.make(),
            CircularProgressIndicator()
          ],
        ),
      )),
    );
  }
}