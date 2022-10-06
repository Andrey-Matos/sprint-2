import 'package:desafio_2/components/product_card.dart';
import 'package:flutter/material.dart';
import '../components/product_row.dart';
import '../components/ingredient_filtering_row.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 245, 245),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 54),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 22,
                ),
                const Text(
                  'Welcome, [first-name].',
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
                    onPressed: () => {},
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
            const SizedBox(
              height: 40,
            ),
            const Padding(
                padding: EdgeInsets.only(right: 161),
                child: Text('Recommended Combo')),
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
            ProductRow(cards: const [
              ProductCard(
                  height: 183,
                  width: 152,
                  title: 'Honey Lime Combo',
                  img: 'assets/images/honey_lime.png',
                  price: 2000),
              ProductCard(
                  height: 183,
                  width: 152,
                  title: 'Berry Mango Combo',
                  img: 'assets/images/berry_mango.png',
                  price: 6000),
              ProductCard(
                  height: 183,
                  width: 152,
                  title: 'mock',
                  img: 'assets/images/honey_lime.png',
                  price: 14000)
            ]),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
