import 'package:flutter/material.dart';
import '../Utils/product_operations.dart';
import '../components/back_button.dart';
import '../models/product_model.dart';

class OrderListScreen extends StatefulWidget {
  List cartList;
  OrderListScreen({Key? key, required this.cartList}) : super(key: key);

  @override
  _OrderListScreenState createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 164, 81),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: <Widget>[
            TopPart(),
            BottomPart(
              cartList: widget.cartList,
            )
          ],
        ),
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  List cartList;

  BottomPart({
    required this.cartList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (_, constraints) {
      return Column(
        children: [
          ListView.separated(
            padding: EdgeInsets.fromLTRB(constraints.maxWidth * 0.08,
                constraints.maxHeight * 0.08, constraints.maxWidth * 0.08, 0),
            itemCount: cartList.length,
            itemBuilder: (context, i) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(cartList[i].image),
                  Padding(
                    padding:
                        EdgeInsets.only(left: constraints.maxWidth * 0.042),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(cartList[i].title),
                          Text('2Packs'),
                          Text('\$${cartList[i]}')
                        ]),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * .3,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(225, 255, 242, 231),
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
                ],
              );
            },
            separatorBuilder: (context, i) {
              return SizedBox(height: constraints.maxHeight * 0.032);
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: constraints.maxHeight * .75),
            child: Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight * 0.24,
              color: Color.fromARGB(255, 250, 250, 250),
              child: Row(
                children: [
                  Column(children: [
                    Text(
                      "total",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Text("\$${ProductOperations.priceSum(cartList)}")
                  ])
                ],
              ),
            ),
          )
        ],
      );
    }));
  }
}

class TopPart extends StatelessWidget {
  const TopPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (_, constraints) {
          return Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  24, constraints.maxHeight / 2, constraints.maxWidth / 3, 0),
              child: Row(children: [
                backButton(),
                Text(
                  'My Basket',
                  style: TextStyle(fontSize: 24),
                )
              ]),
            )
          ]);
        },
      ),
    );
  }
}
