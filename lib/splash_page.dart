import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurant_app/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 165,
        width: 217,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/logo.png"))),
      ),
    ));
  }
}
