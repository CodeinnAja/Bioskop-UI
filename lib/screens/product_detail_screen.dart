import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_controller.dart';

import '../providers/all_products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    final product = Provider.of<Products>(context).findById(productId);

    return Scaffold(
        appBar: AppBar(
          title: Text("${product.title}"),
          backgroundColor: Colors.red,
        ),
        body:
            //Column(
            //   children: [
            //     Container(
            //       width: double.infinity,
            //       height: 250,
            //       child: Image.network(
            //         "${product.imageUrl}",
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     SizedBox(height: 30),
            //     Text(
            //       "${product.title}",
            //       style: TextStyle(
            //         fontSize: 35,
            //         fontWeight: FontWeight.bold,
            //       ),
            //       textAlign: TextAlign.left,
            //     ),
            //     SizedBox(height: 15),
            //     Text(
            //       "\Rp ${product.price}",
            //       style: TextStyle(
            //           fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
            //     ),
            //     SizedBox(height: 15),
            //     Text(
            //       "${product.description}",
            //       style: TextStyle(
            //         fontSize: 24,
            //       ),
            //     ),
            //   ],
            // ),
            ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.network(
                    "${product.imageUrl!}",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.network(
                    "${product.imageUrl!}",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
              options: CarouselOptions(
                  height: 250.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                "${product.title}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                "in stok",
                style: TextStyle(
                  color: const Color.fromARGB(255, 17, 156, 89),
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                "\ Rp.${product.price}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
