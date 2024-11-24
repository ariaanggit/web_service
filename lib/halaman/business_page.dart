import 'package:flutter/material.dart';

class BusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('This is the Business Page'),
      ),
    );
  }
}