import 'package:flutter/material.dart';
import '../halaman/history_page.dart'; // Naik satu level ke folder lib, lalu masuk ke folder halaman
import '../halaman/cart_page.dart';
import '../halaman/business_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> names = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Grape',
    'Kiwi',
    'Lemon',
    'Mango',
    'Orange',
    'Papaya',
    'Pineapple',
    'Raspberry',
    'Strawberry'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // Image Section
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: ClipRRect(
                child: Image.network(
                  'https://media.istockphoto.com/id/173255460/id/foto/bermacam-macam-buah-buahan.jpg?b=1&s=612x612&w=0&k=20&c=TqFv57njWkKb6RUGCzFRr_aQuWR3yMA24F-tL1LOqiE=',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),

            // Icon Row Section
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // History Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HistoryPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.history,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  // Shopping Cart Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.rectangle,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  // Business Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BusinessPage()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.rectangle,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.business,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // List Section
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(names[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
