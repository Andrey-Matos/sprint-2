import 'package:flutter/material.dart';

class Product {
  String title;
  String image;
  String price;
  String description;
  bool isFavorite;
  List ingredients;
  String type;

  Product({
    required this.type,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.isFavorite,
    required this.ingredients,
  });

  static toList(productMap) => productMap.values.toList();
}
