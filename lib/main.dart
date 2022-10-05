import 'package:desafio_2/screens/authScreen.dart';
import 'package:desafio_2/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'TT norms pro',
          textTheme: TextTheme(
              bodyText2: TextStyle(fontSize: 16),
              button: TextStyle(fontSize: 16))),
      home: AuthScreen(),
    );
  }
}
