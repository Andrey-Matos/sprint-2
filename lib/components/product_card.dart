import 'package:desafio_2/data/product_map.dart';
import 'package:desafio_2/providers/cartProvider.dart';
import 'package:desafio_2/screens/addToBasketScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  final String img;
  final String price;
  final String title;
  final Color bg_color;
  final double scaleFactor;

  ProductCard({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.scaleFactor,
    this.bg_color = const Color.fromARGB(255, 255, 255, 255),
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Consumer<CartProvider>(
        builder: (context, provider, child) => Padding(
            padding: EdgeInsets.only(right: width / 10),
            child: Container(
                decoration: BoxDecoration(
                  color: widget.bg_color,
                  borderRadius: BorderRadius.circular(10),
                ),
                // color: Colors.black,
                height: (height / 5) * widget.scaleFactor,
                width: (width / 3) * widget.scaleFactor,
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
                          child: Image.asset(
                            'assets/images/fav_button.png',
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: height / 35, left: width / 8),
                          child: SizedBox(
                              height: height / 10,
                              width: width / 6,
                              child: Image.asset(widget.img)))
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('\$${widget.price}'),
                                  TextButton(
                                      onPressed: () {
                                        var temp = products[widget.title];
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AddToBasketScreen(
                                                        title: temp.title,
                                                        price: temp.price,
                                                        image: widget.img,
                                                        ingredients:
                                                            temp.ingredients,
                                                        description:
                                                            temp.description)));
                                      },
                                      child: Image.asset(
                                          'assets/images/add_button.png'))
                                ],
                              ))
                        ])
                  ],
                ))));
  }
}
