import 'package:desafio_2/screens/homeScreen.dart';
import 'package:desafio_2/screens/mainScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .52,
            width: double.infinity,
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 164, 81)),
            child: Stack(alignment: Alignment.center, children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .15,
                    bottom: MediaQuery.of(context).size.height * .07),
                child: Image.asset(
                  'assets/images/esse.png',
                ),
              ),
            ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, top: 40.0, right: 52),
                child: Text(
                  "What is your firstname?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24, top: 17.0, right: 24),
                  child: SizedBox(
                    width: 327,
                    height: 56,
                    child: TextField(
                      controller: _nameController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 247, 245, 245),
                          border: OutlineInputBorder(
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
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MainScreen(_nameController.text)))
                      },
                  child: Text('Start Ordering')),
            ),
          )
        ],
      ),
    );
  }
}
