import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login page",
        
        
        style: TextStyle(
          fontSize: 18,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          
        ),),
      ),
    );
  }
}