import 'package:flutter/material.dart';

class backButton extends StatelessWidget {
  const backButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        icon: Icon(Icons.arrow_back_ios),
        label: Text(
          'Go Back',
          style: TextStyle(fontSize: 12),
        ));
  }
}
