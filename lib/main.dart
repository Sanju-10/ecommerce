import 'package:ecommerce/Pages/Splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'Pacifico-Regular',
        primaryColor: Color(0xff030161),
      ),
    );
  }
}
