import 'package:flutter/material.dart';

class AddToBasketScreen extends StatefulWidget {
  final String title;
  int quantity = 0;
  final String price;
  AddToBasketScreen({super.key, required this.title, required this.price});

  @override
  State<AddToBasketScreen> createState() => _AddToBasketScreenState();
}

class _AddToBasketScreenState extends State<AddToBasketScreen> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('Appbar'));
    var size = MediaQuery.of(context).size;

    // var screenHeight = ( size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: LayoutBuilder(builder: (_, constraints) {
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
                                      right: constraints.maxWidth * .7),
                                  child: TextButton(
                                      onPressed: () {}, child: Text('Go Back')),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: constraints.maxHeight * 0.025,
                                        bottom: constraints.maxHeight * 0.075),
                                    child: SizedBox(
                                      width: constraints.maxWidth / 2.25,
                                      child: Image.asset(
                                          'assets/images/berry_mango.png',
                                          fit: BoxFit.fitWidth),
                                    ))
                              ]);
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: constraints.maxHeight * .38),
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
                                              right:
                                                  constraints.maxWidth * 0.04),
                                          child: CircleAvatar(
                                            backgroundColor: Color.fromARGB(
                                                225, 255, 242, 231),
                                            radius: 16,
                                            child: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.remove,
                                                color: Color.fromARGB(
                                                    255, 255, 164, 81),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right:
                                                  constraints.maxWidth * 0.04),
                                          child: Text(
                                            '${widget.quantity}',
                                            style: TextStyle(fontSize: 24),
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Color.fromARGB(
                                              225, 255, 242, 231),
                                          radius: 16,
                                          child: IconButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              color: Color.fromARGB(
                                                  255, 255, 164, 81),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: constraints.maxWidth * 0.3),
                                          child: Text(
                                            '\$ ${widget.price}',
                                            style: TextStyle(fontSize: 32),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: constraints.maxWidth * 0.08),
                                    child: Divider(
                                      thickness: 1,
                                      indent: constraints.maxWidth * 0.064,
                                      endIndent: constraints.maxWidth * 0.064,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.064,
                                        top: constraints.maxHeight * 0.043),
                                    child: Text('This Combo Contains:'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: constraints.maxWidth * 0.016),
                                    child: Divider(
                                      color: Color.fromARGB(255, 255, 164, 81),
                                      thickness: 3,
                                      indent: constraints.maxWidth * 0.064,
                                      endIndent: constraints.maxWidth * 0.78,
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),
                        )
                      ]),
                    ]);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
