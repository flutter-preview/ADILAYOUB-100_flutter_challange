import 'package:flutter/material.dart';

import 'Profile.dart';
import 'fav.dart';
import 'home.dart';
import 'settings.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  final List _children = [
    const Home(),
    Profile(),
    const Fav(),
    const Settings(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[50],
        elevation: 0,
        iconSize: 25,
        selectedFontSize: 10,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue[200],
        onTap: onTappedBar,
        currentIndex: _currentIndex, // Add this line
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
