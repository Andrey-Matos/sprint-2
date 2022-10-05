import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 164, 81)),
            child: Stack(alignment: Alignment.center, children: [
              Container(
                margin: EdgeInsets.only(top: 155, bottom: 54),
                child: Image.asset(
                  'assets/images/esse.png',
                ),
              ),
            ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 24, top: 40.0, right: 52),
                child: Text(
                  textAlign: TextAlign.start,
                  'What is your first name?',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24, top: 17.0, right: 24),
                  child: SizedBox(
                    width: 327,
                    height: 56,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 247, 245, 245),
                          border: OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Chris',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(178, 194, 189, 189))),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 58, left: 20, bottom: 82, right: 20),
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
                  child: Text('Start Ordering')),
            ),
          )
        ],
      ),
    );
  }
}
