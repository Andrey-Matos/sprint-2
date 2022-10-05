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
        body: Column(children: [
      Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 255, 164, 81)),
        child: Stack(alignment: Alignment.center, children: [
          Container(
            margin: EdgeInsets.only(top: 155, bottom: 54),
            child: Image.asset(
              'assets/images/welcome_fruits.png',
            ),
          ),
        ]),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 40.0, right: 52),
            child: Text(
              textAlign: TextAlign.start,
              'Get The Freshest Fruit Salad Combo',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 8.0, right: 52),
            child: Text(
                textAlign: TextAlign.start,
                'We deliver the best and freshest fruit salad in town. Order for a combo today!!!'),
          ),
        ],
      ),
      Padding(
          padding: EdgeInsets.only(top: 80, left: 24, bottom: 82, right: 24),
          child: SizedBox(
            width: 327,
            height: 56,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 164, 81)),
                onPressed: () => {},
                child: Text('Let\'s Continue')),
          ))
    ]));
  }
}
