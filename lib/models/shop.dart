import 'package:empat_project_5/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: 'Desert Bow Tech Pant',
        price: 210.00,
        imagePath: 'lib/images/item1.jpeg'),
    Product(
        name: 'Night M5 Shaked',
        price: 240.00,
        imagePath: 'lib/images/item2.jpeg'),
    Product(
        name: 'Night V2 Hoodie',
        price: 190.00,
        imagePath: 'lib/images/item3.jpeg'),
    Product(
        name: 'Night Bow Tech Pant',
        price: 210.00,
        imagePath: 'lib/images/item4.jpeg'),
    Product(
        name: 'Chemical V2 Hoodie',
        price: 190.00,
        imagePath: 'lib/images/item6.jpeg'),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
