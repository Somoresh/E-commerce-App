import 'dart:async';
import 'dart:developer';

import 'package:ecommerce_app/Screens/screens.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Screens()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xffEFA3C8),
          child: Center(
            child: Image.asset('images/Selony-Logo.png'),
          )),
    );
  }
}
