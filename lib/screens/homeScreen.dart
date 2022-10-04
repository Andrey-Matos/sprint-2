import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 469,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 164, 81)),
            child: Stack(alignment: Alignment.center, children: [
              Container(
                margin: EdgeInsets.only(top: 155),
                child: Image.asset(
                  'assets/images/welcome_fruits.png',
                ),
              ),
            ]),
          ),
          Container(
              padding: EdgeInsets.only(left: 15, right: 25),
              width: double.infinity,
              child: Column(
                children: [
                  Text('Get The Freshest Fruit Salad Combo'),
                  Text(
                      'We deliver the best and freshest fruit salad in town. Order for a combo today!!!'),
                  ElevatedButton(
                      onPressed: () => {}, child: Text('Let\'s continue'))
                ],
              ))
        ],
      ),
    );
  }
}
