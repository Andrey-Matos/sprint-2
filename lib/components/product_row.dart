import 'package:desafio_2/components/product_card.dart';
import 'package:flutter/material.dart';

class ProductRow extends StatelessWidget {
  List<Widget> cards;

  ProductRow({
    super.key,
    required this.cards,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color.fromARGB(255, 247, 245, 245),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, child: Row(children: cards)),
    );
  }
}
