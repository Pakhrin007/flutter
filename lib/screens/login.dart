import 'package:flutter/material.dart';
import 'package:project/auth_services/auth_services.dart';
import 'package:project/routes/route.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey=GlobalKey<FormState>();

  void handleLogin(){
    setState(() {
      onChange=true;

    });
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, MyRoutes.homeScreenRoute);
    })  ;
  }

  final authservice=AuthServices();

  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();


  void login() async{
    final email=_emailController.text;
    final password=_passwordController.text;

    try {
      await authservice.signinWithEmailPassword(email, password);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error")));
      }
      
    }
  }
  bool onChange=false;
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
                "WELCOME TO TASK MANAGER".text.uppercase.color(Colors.red).xl3.textStyle(TextStyle(decoration: TextDecoration.underline,fontFamily: 'libe')).make().p16().centered(),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    
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
                10.heightBox,
                Padding(padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    prefixIconColor: Colors.deepOrangeAccent,
                    labelText: "Enter you password",
                    hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))

                  ),
                ),
                ),
                18.heightBox,
                Center(
                  child: Material(
                    color: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: InkWell(
                      onTap: () => handleLogin(),
                    
                      
                      child: AnimatedContainer(duration:Duration(seconds: 1),
                      
                      height: 50,
                      width: onChange?70:100,
                      alignment: Alignment.center,
                      child: onChange?Icon(Icons.done,color: Colors.black,):"Login".text.xl2.bold.textStyle(TextStyle(fontFamily: 'libe',color: Colors.white)).make(),
                      ),
                    ),
                  ),
                ),
                20.heightBox,

                Row(
                  children: [
                    "If Account not created".text.uppercase.xl.textStyle(TextStyle(color: Colors.black87,fontFamily: 'poppins')).make().pOnly(right: 10,left: 40),
                    
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, MyRoutes.registerScreenRoute);
                      },
                      child: "SIgnup".text.uppercase.xl2.semiBold.textStyle(TextStyle(color: Colors.deepOrangeAccent,fontFamily: 'libe',decoration: TextDecoration.underline,)).make()),
                  ],
                )

              ],
            ),
          

          ),
        ),
      ),


    ) ;
  }
}