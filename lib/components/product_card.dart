import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String img;
  final int price;
  final String title;
  final double height;
  final double width;

  const ProductCard({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.height,
    required this.width,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 36),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // color: Colors.black,
            height: widget.height,
            width: widget.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //padding: EdgeInsets.only(left: 56),
                Stack(children: [
                  //padding: EdgeInsets.only(left: 56),
                  Padding(
                    padding: EdgeInsets.only(left: 110, top: 6, right: 6),
                    child: TextButton(
                      onPressed: () {},
                      //style: TextButton.styleFrom(backgroundColor: Colors.black),
                      child: Image.asset(
                        'assets/images/fav_button.png',
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(36, 22, 36, 0),
                      child: Image.asset(widget.img))
                ]),
                const SizedBox(
                  height: 13,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      widget.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                //const SizedBox(
                //  height: 13,
                //),
                Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${widget.price}'),
                        TextButton(
                            onPressed: () {},
                            child: Image.asset('assets/images/add_button.png'))
                      ],
                    ))
              ],
            )));
  }
}
