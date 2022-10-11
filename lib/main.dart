import 'package:desafio_2/screens/addToBasketScreen.dart';
import 'package:desafio_2/screens/authScreen.dart';
import 'package:desafio_2/screens/mainScreen.dart';
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
        primaryColor: Color.fromARGB(255, 255, 164, 81),
        //backgroundColor: Color.fromARGB(255, 247, 245, 245),
        textTheme: TextTheme(
          bodyText2:
              TextStyle(fontSize: 14, color: Color.fromARGB(255, 39, 33, 77)),
          button: TextStyle(
            fontSize: 16,
            //backgroundColor: Color.fromARGB(255, 255, 164, 81),
          ),
        ),
      ),
      home: AddToBasketScreen(
        title: 'comida',
        price: '1000',
        ingredients: [
          'red quinoa',
          'lime',
          'honey',
          'blueberries',
          'mango',
          'strawberries',
          'fresh mint'
        ],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      ),
    );
  }
}
