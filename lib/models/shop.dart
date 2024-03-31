import 'package:empat_project_5/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: 'Desert Bow Tech Pant',
        price: 210.00,
        imagePath: 'lib/images/item1.jpeg')
    // Product(name: 'Product 1', price: 99.9, description: 'Item description'),
    // Product(name: 'Product 2', price: 99.9, description: 'Item description'),
    // Product(name: 'Product 3', price: 99.9, description: 'Item description'),
    // Product(name: 'Product 4', price: 99.9, description: 'Item description'),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _shop;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
