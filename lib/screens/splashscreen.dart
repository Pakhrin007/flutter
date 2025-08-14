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
    super.initState();

    // Wait until first frame is rendered, then start delay
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, MyRoutes.loginScreenRoute);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "MY NOTES"
                  .text
                  .xl2
                  .bold
                  .textStyle(const TextStyle(fontFamily: 'poppins'))
                  .make(),
              10.heightBox,
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
