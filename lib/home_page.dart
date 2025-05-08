import'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          
          title: Center(
            child: Text("MyApp"),
            
          ),
        ),
        body: Center(
          child: Container(
            child: Text('welcome to my app'),
          ),
        ),
        drawer: Drawer(),
     
    );
  }
}