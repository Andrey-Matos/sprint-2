import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/back_button.dart';
import '../providers/cartProvider.dart';

class AddToBasketScreen extends StatefulWidget {
  final String title;
  int quantity = 0;
  final String image;
  final String price;
  final List ingredients;
  final String description;

  AddToBasketScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.ingredients,
      required this.description});

  @override
  State<AddToBasketScreen> createState() => _AddToBasketScreenState();
}

class _AddToBasketScreenState extends State<AddToBasketScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    // var screenHeight = ( size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(builder: (_, constraints) {
                return upperPart(
                  widget: widget,
                  constraints: constraints,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class upperPart extends StatelessWidget {
  const upperPart({required this.widget, required this.constraints});

  final AddToBasketScreen widget;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(children: [
            Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.4,
              color: Color.fromARGB(255, 255, 164, 81),
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return Column(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: constraints.maxHeight * .14,
                          left: constraints.maxWidth * 0.064,
                          right: constraints.maxWidth * .7),
                      child: backButton(),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: constraints.maxHeight * 0.025,
                            bottom: constraints.maxHeight * 0.075),
                        child: SizedBox(
                          width: constraints.maxWidth / 2.25,
                          child: Image.asset('assets/images/berry_mango.png',
                              fit: BoxFit.fitWidth),
                        ))
                  ]);
                },
              ),
            ),
            BottomPart(
              widget: widget,
              constraints: constraints,
            )
          ]),
        ]);
  }
}

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key, required this.widget, required this.constraints})
      : super(key: key);

  final AddToBasketScreen widget;
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
        builder: (context, cartProvider, child) => Padding(
              padding: EdgeInsets.only(top: constraints.maxHeight * .38),
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.62,
                child: LayoutBuilder(builder: (_, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: constraints.maxHeight * .1,
                            left: constraints.maxWidth * 0.064),
                        child: Text(
                          widget.title,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.032,
                              left: constraints.maxWidth * 0.08),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: constraints.maxWidth * 0.04),
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(225, 255, 242, 231),
                                  radius: 16,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      cartProvider.decrement();
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 255, 164, 81),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: constraints.maxWidth * 0.04),
                                child: Text(
                                  '${cartProvider.getquantity.toString()}',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(225, 255, 242, 231),
                                radius: 16,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    cartProvider.increment();
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Color.fromARGB(255, 255, 164, 81),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: constraints.maxWidth * 0.3),
                                child: Text(
                                  '\$ ${cartProvider.getPlateTotal.toString()}',
                                  style: TextStyle(fontSize: 32),
                                ),
                              )
                            ],
                          )),
                      Padding(
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.036),
                        child: Divider(
                          thickness: 1,
                          indent: constraints.maxWidth * 0.064,
                          endIndent: constraints.maxWidth * 0.064,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: constraints.maxWidth * 0.064,
                            top: constraints.maxHeight * 0.036),
                        child: Text('This Combo Contains:',
                            style: TextStyle(fontSize: 18)),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.016),
                        child: Divider(
                          color: Color.fromARGB(255, 255, 164, 81),
                          thickness: 3,
                          indent: constraints.maxWidth * 0.064,
                          endIndent: constraints.maxWidth * 0.78,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.036,
                              left: 32,
                              right: 32),
                          child: usedIngredients(
                            widget: widget,
                            constraints: constraints,
                          )),
                      Padding(
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.02),
                        child: Divider(
                          thickness: 1,
                          indent: constraints.maxWidth * 0.064,
                          endIndent: constraints.maxWidth * 0.064,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxWidth * 0.04,
                              left: 24,
                              right: 24),
                          child: Text(
                            widget.description,
                            style: TextStyle(
                              color: Color.fromARGB(255, 51, 51, 51),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 16,
                            left: 24,
                            right: 24,
                            top: constraints.maxHeight * 0.024),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(225, 255, 242, 231),
                                radius: 16,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Color.fromARGB(255, 255, 164, 81),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  cartProvider.addCartList({
                                    'title': widget.title,
                                    'image': widget.image,
                                    'quantity': cartProvider.getquantity,
                                    'price': cartProvider.getTotalPrice,
                                  });
                                  cartProvider.resetCartList();
                                  Navigator.pop(context);
                                },
                                child: Text('Add To Basket'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 164, 81)),
                              )
                            ]),
                      )
                    ],
                  );
                }),
              ),
            ));
  }
}

class usedIngredients extends StatelessWidget {
  const usedIngredients({required this.widget, required this.constraints});

  final AddToBasketScreen widget;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: widget.ingredients
            .map((e) => Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 8),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 250, 250, 250)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                          child: Text(
                            e,
                            style: TextStyle(
                              color: Color.fromARGB(255, 64, 62, 62),
                              fontSize: 12,
                            ),
                          ))),
                ))
            .toList());
  }
}
