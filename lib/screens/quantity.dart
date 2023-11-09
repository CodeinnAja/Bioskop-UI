import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

class inputQuantity extends StatefulWidget {
  const inputQuantity({super.key});

  @override
  State<inputQuantity> createState() => _inputQuantityState();
}

class _inputQuantityState extends State<inputQuantity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InputQty(
              btnColor1: Colors.green, //color of the increase and decrease icon
              maxVal: double.maxFinite, //max val to go
              initVal: 0, //min starting val
              onQtyChanged: (val) {
                //on value changed we may set the value
                //setstate could be called
              },
            ),
          ],
        ),
      ),
    );
  }
}
