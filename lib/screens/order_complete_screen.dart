import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/orderListScreen.dart';
import '../providers/cartProvider.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Image.asset('assets/images/order_complete.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Text(
                'Order Taken',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                'Your order have been taken and is being attended to',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 56),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 246, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text(
                  'Track Order',
                  style: TextStyle(color: Color.fromARGB(255, 240, 134, 38)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, bottom: 170),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 164, 81),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  cartProvider.resetAll();
                  int count = 0;
                  Navigator.of(context).popUntil((_) => count++ >= 2);
                },
                child: Text('Continue Shopping'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
