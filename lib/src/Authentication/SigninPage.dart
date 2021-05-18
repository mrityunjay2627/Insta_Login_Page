import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: Column(
       children: [
         SafeArea(child: SizedBox()),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assets/vectors/login1.png"),
           ],
         ),
         Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
           child: Row(
             children: [
               Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
             ],
           ),
         ),
       ],
     ),
    );
  }
}
