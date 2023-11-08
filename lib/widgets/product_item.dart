import 'dart:ffi';

import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;
  final String? description;
  final double? price;

  ProductItem(this.id, this.title, this.imageUrl, this.description, this.price);

  @override
  Widget build(BuildContext context) {
    // return ClipRRect(
    //   borderRadius: BorderRadius.circular(10),
    //   child: GridTile(
    //     child: GestureDetector(
    //       onTap: () {
    //         Navigator.of(context).pushNamed(
    //           ProductDetailScreen.routeName,
    //           arguments: id,
    //         );
    //       },
    //       child: Image.network(
    //         imageUrl!,
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //     footer: GridTileBar(
    //       backgroundColor: Colors.black87,
    //       leading: IconButton(
    //         icon: Icon(Icons.favorite_border_outlined),
    //         color: Theme.of(context).colorScheme.secondary,
    //         onPressed: () {},
    //       ),
    //       title: Text(
    //         title!,
    //         textAlign: TextAlign.center,
    //       ),
    //       trailing: IconButton(
    //         icon: Icon(
    //           Icons.shopping_cart,
    //         ),
    //         onPressed: () {},
    //         color: Theme.of(context).colorScheme.secondary,
    //       ),
    //     ),
    //   ),
    // );
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: id,
          );
        },
        child: Container(
            child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  leading: Image.network(imageUrl!),
                  title: Text(title!,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(description!),
                      Text(
                        "in stok",
                        style: TextStyle(color: Colors.green),
                      ),
                      Text(
                        "\Rp.${price}",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  )),
              SizedBox(height: 10)
            ],
          ),
        )));
  }
}
