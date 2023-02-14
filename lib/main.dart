import 'dart:html';

import 'package:ecommerce_app/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';
import 'Screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
