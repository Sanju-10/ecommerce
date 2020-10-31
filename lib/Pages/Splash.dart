import 'dart:async';

import 'package:ecommerce/Pages/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ))
            });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple[100],
        body: Column(
          children: [
            //AppName
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Center(
                  child: Text(
                'Ecommerce',
                style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.normal),
              )),
            ),

            //App Image
            Lottie.asset(
              'assets/animation/logo.json',
              width: MediaQuery.of(context).size.width - 10,
              height: MediaQuery.of(context).size.height / 3,
            ),

            //Solon
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Center(
                  child: Text(
                'On the Way you go Home',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
