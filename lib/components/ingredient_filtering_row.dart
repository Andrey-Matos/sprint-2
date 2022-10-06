import 'package:flutter/material.dart';

import 'ingredient_filtering_button.dart';

class IngredientFilteringButtons extends StatefulWidget {
  const IngredientFilteringButtons({Key? key}) : super(key: key);

  @override
  _IngredientFilteringButtonsState createState() =>
      _IngredientFilteringButtonsState();
}

class _IngredientFilteringButtonsState
    extends State<IngredientFilteringButtons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Color.fromARGB(255, 247, 245, 245),
        child: Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IngredientFilteringButton('All')),
            Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IngredientFilteringButton('Salad Combo')),
            Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IngredientFilteringButton('Berry Combo')),
            Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IngredientFilteringButton('Mango Combo')),
          ],
        ),
      ),
    );
  }
}
