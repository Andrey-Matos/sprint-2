import 'package:flutter/material.dart';

class Product {
  String title;
  Image image;
  String price;
  String description;
  bool isFavorite;
  List ingredients;

  Product({
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.isFavorite,
    required this.ingredients,
  });
}
