import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String img;
  final int price;
  final String title;
  final double height;
  final double width;
  final Color bg_color;

  const ProductCard({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.height,
    required this.width,
    this.bg_color = const Color.fromARGB(255, 255, 255, 255),
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
              color: widget.bg_color,
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
                    padding: EdgeInsets.only(left: 100, right: 6),
                    child: TextButton(
                      onPressed: () {},
                      //style: TextButton.styleFrom(backgroundColor: Colors.black),
                      child: Image.asset(
                        'assets/images/fav_button.png',
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: widget.height / 9, left: widget.width / 4.1),
                      child: SizedBox(
                          height: widget.height / 2.28,
                          width: widget.width / 1.9,
                          child: Image.asset(widget.img, fit: BoxFit.fill)))
                ]),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            widget.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$${widget.price}'),
                              TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                      'assets/images/add_button.png'))
                            ],
                          ))
                    ])
              ],
            )));
  }
}
