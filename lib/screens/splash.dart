import 'dart:async';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/splash_logo.png", fit: BoxFit.cover),
            Image.asset("assets/images/splash_text.png", fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
