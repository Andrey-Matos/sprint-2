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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  top: height * .4, left: width * .35, right: width * .35),
              child: Image.asset("assets/images/splash_logo.png")),
          Padding(
            padding: EdgeInsets.fromLTRB(
                width * .24, height * .54, width * .24, height * .31),
            child: Image.asset("assets/images/splash_text.png"),
          )
        ],
      ),
    );
  }
}
