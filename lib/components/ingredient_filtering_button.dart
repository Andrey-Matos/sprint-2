import 'package:flutter/material.dart';

class IngredientFilteringButton extends StatefulWidget {
  final String text;
  const IngredientFilteringButton(this.text, {Key? key}) : super(key: key);

  @override
  _IngredientFilteringButtonState createState() =>
      _IngredientFilteringButtonState();
}

class _IngredientFilteringButtonState extends State<IngredientFilteringButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        widget.text,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 51, 51, 51),
        shadowColor: Colors.grey,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
