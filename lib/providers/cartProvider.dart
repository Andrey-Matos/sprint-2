import 'package:flutter/material.dart';
import '../data/product_map.dart';
import '../Utils/product_operations.dart';
import '../data/basket.dart';

class CartProvider with ChangeNotifier {
  Basket basket = Basket();
  int _quantity = 1;
  int _platePriceSum = 0;
  int _platePrice = 0;
  int _totalPrice = 0;
  List _cartList = [];

  int get getquantity => _quantity;
  int get getpricePlate => _platePrice;
  int get getTotalPrice => _totalPrice;
  int get getPlateTotal => _platePriceSum;
  set setPrice(price) => _platePrice = price;
  set setPlateTotal(price) => _totalPrice = price;

  set setBasketTotal(_) => {
        _totalPrice = ProductOperations.priceSum(basket.getProducts),
        notifyListeners()
      };

  set add(prod) {
    basket.addProduct(prod);
    notifyListeners();
  }

  void remove(String name) {
    basket.popProduct(name);
    notifyListeners();
  }

  void addCartList(Map product) {
    _cartList.add(product);
    notifyListeners();
  }

  void removeCartList(int i) {
    _cartList.removeAt(i);
    notifyListeners();
  }

  void plateReset() {
    _quantity = 1;
    _platePrice = 0;
    notifyListeners();
  }

  void resetCartList() {
    _cartList.clear();
    notifyListeners();
  }

  void resetAll() {
    _platePrice = 0;
    _totalPrice = 0;
    _platePriceSum = 0;
    _cartList = [];
  }

  set init(value) {
    _totalPrice = _platePriceSum = 0;
    notifyListeners();
  }

  void increment() {
    _quantity++;
    _platePriceSum = _platePrice * _quantity;
    notifyListeners();
  }

  void decrement() {
    if (_quantity > 1) {
      _quantity--;
      _platePriceSum = _totalPrice - _platePrice;
      notifyListeners();
    }
  }
}
