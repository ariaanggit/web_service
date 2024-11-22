import 'package:flutter/material.dart';
import 'Product.dart';
import 'home.dart';
import 'userpage.dart'; // Import UserPage

class Navbar extends StatefulWidget {
  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Add UserPage to the list of pages
  final List<Widget> _pages = [HomePage(), Product(), UserPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits), label: 'Product'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'User'), // Add User item
        ],
      ),
    );
  }
}
