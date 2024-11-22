import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('This is the History Page'),
      ),
    );
  }
}
