import 'package:flutter/material.dart';
import 'package:project/routes/route.dart';
import 'package:project/screens/login.dart';
import 'package:velocity_x/velocity_x.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  bool onChange=false;

  final _formKey=GlobalKey<FormState>();
  void handleRegister(){
    setState(() {
      onChange=true;
    });
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, MyRoutes.homeScreenRoute);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                  Image.asset("assets/images/download.png"),   
                  "Register to add task".text.uppercase.semiBold.xl3.textStyle(TextStyle(color: Colors.deepOrangeAccent,fontFamily: 'libe',decoration: TextDecoration.underline)).make().p16().centered(),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.deepOrangeAccent,
                      labelText: 'Enter your Email',
                      labelStyle: TextStyle(fontSize: 14,fontFamily: 'poppins'),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),  
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))

                    ),
                  
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      prefixIconColor: Colors.deepOrangeAccent,
                      labelText: 'Enter your PhoneNumber',
                      labelStyle: TextStyle(fontSize: 14,fontFamily: 'poppins'),
                      hintText: "PhoneNumber",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),  
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))

                    ),
                  
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.deepOrangeAccent,
                      labelText: 'Enter your Password',
                      labelStyle: TextStyle(fontSize: 14,fontFamily: 'poppins'),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),  
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))

                    ),
                  
                  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.deepOrangeAccent,
                      labelText: 'Enter your Confirm Password',
                      labelStyle: TextStyle(fontSize: 14,fontFamily: 'poppins'),
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),  
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))

                    ),
                  
                  
                  ),
                ),
                15.heightBox,
                Center(
                  child: Material(
                    color: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: InkWell(
                      onTap:() => handleRegister(),
                      child: AnimatedContainer(duration: Duration(seconds: 2),
                      height: 50,
                      width: onChange?70:100,
                      alignment: Alignment.center,
                      child: onChange?Icon(Icons.done,color: Colors.black):"SignUp".text.xl2.bold.textStyle(TextStyle(fontFamily: 'libe',color: Colors.white)).make(),
                      ),
                    ),
                  ),
                ),
                20.heightBox,

                Row(
                  children: [
                    "If Account Already created".text.xl.textStyle(TextStyle(color: Colors.black87,fontFamily: 'poppins')).make().pOnly(right: 10,left: 40),
                    
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, MyRoutes.loginScreenRoute);
                      },
                      child: "Login".text.uppercase.xl2.semiBold.textStyle(TextStyle(color: Colors.deepOrangeAccent,fontFamily: 'libe',decoration: TextDecoration.underline,)).make()),
                  ],
                )

                      ],

            ),
            
            ),
        ),
      ),
    );
  }
}