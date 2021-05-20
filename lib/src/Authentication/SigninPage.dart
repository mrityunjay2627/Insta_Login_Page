import 'package:flutter/material.dart';
import 'package:instagram_clone/Objects/passwordField.dart';
import 'package:instagram_clone/Objects/textField.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/vectors/login1.png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: textField(
                hintText: "User Id",
                icon: Icons.person_outline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: passwordField(
                hintText: "Password",
                icon: Icons.fingerprint,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
