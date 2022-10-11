import 'package:desafio_2/components/product_card.dart';
import 'package:flutter/material.dart';
import '../components/product_row.dart';
import '../components/ingredient_filtering_row.dart';
import '../data/product_map.dart';
import 'orderListScreen.dart';

class MainScreen extends StatefulWidget {
  final String username;
  const MainScreen(this.username);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 22,
                ),
                Text(
                  'Welcome, ${widget.username}.',
                  style: TextStyle(color: Color.fromARGB(255, 39, 33, 77)),
                ),
                const SizedBox(
                  width: 80,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: -6,
                      blurRadius: 10,
                    )
                  ]),
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  OrderListScreen(cartList: [])))
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: const Icon(
                      Icons.shopping_basket,
                      color: Color.fromARGB(255, 255, 164, 81),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const IngredientFilteringButtons(),
            SizedBox(
              height: height / 25,
            ),
            const Padding(
                padding: EdgeInsets.only(right: 151),
                child: Text(
                  'Recommended Combo',
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(
              height: 6,
            ),
            Padding(
                padding: EdgeInsets.only(right: 275),
                child: Container(
                  height: 1,
                  width: 56,
                  color: const Color.fromARGB(255, 255, 164, 81),
                )),
            SizedBox(height: 16),
            ProductRow(cards: [
              ProductCard(
                  scaleFactor: 1.3,
                  title: 'Honey Lime Combo',
                  img: 'assets/images/honey_lime.png',
                  price: '2000'),
              ProductCard(
                  scaleFactor: 1.3,
                  title: 'Berry Mango Combo',
                  img: 'assets/images/berry_mango.png',
                  price: '6000'),
              ProductCard(
                  scaleFactor: 1.3,
                  title: 'mock',
                  img: 'assets/images/honey_lime.png',
                  price: '14000')
            ]),
            Padding(
                padding: EdgeInsets.only(top: height / 25, right: 58),
                child: ButtonBar(children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Hottest',
                        style: TextStyle(color: Colors.grey[500]),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Popular',
                        style: TextStyle(color: Colors.grey[500]),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'New Combo',
                        style: TextStyle(color: Colors.grey[500]),
                      )),
                ])),
            ProductRow(cards: [
              ProductCard(
                  scaleFactor: 1.20,
                  title: 'Berry Mango Combo',
                  img: 'assets/images/berry_mango.png',
                  price: '6000'),
              ProductCard(
                  scaleFactor: 1.2,
                  title: 'mock',
                  img: 'assets/images/honey_lime.png',
                  price: '14000')
            ])
          ],
        ),
      ),
    );
  }
}
