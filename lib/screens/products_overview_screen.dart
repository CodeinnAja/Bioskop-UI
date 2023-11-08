import 'package:flutter/material.dart';

import '../widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Product'),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.red,
      ),
      body: ProductGrid(),
    );
  }
}
