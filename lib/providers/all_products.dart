import 'dart:math';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _allproducts = List.generate(
    2,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Laptop ${index + 1}",
        description: 'Laptop',
        price: 10000 + Random().nextInt(10000).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get allproducts {
    return [..._allproducts];
  }

  Product findById(productId) {
    return _allproducts.firstWhere((prodId) => prodId.id == productId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}
