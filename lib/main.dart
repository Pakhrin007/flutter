import 'package:flutter/material.dart';

import 'package:project/routes/route.dart';
import 'package:project/screens/homepage.dart';
import 'package:project/screens/login.dart';
import 'package:project/screens/registerpage.dart';
import 'package:project/screens/splashscreen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main () async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://kqdplozyyrbxhhxntjqr.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtxZHBsb3p5eXJieGhoeG50anFyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTUzMjgyMzEsImV4cCI6MjA3MDkwNDIzMX0.Q8eYa0CxN2rh9u88Tch7Y6ZEaOiebNHc0ikT7_F_qlY',
  );

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
