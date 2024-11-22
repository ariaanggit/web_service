import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('This is the Shopping Cart Page'),
      ),
    );
  }
}
