import 'package:bottom_navigation/pages/home_page.dart';
import 'package:bottom_navigation/pages/profile_page.dart';
import 'package:bottom_navigation/pages/search_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected_index = 0;
  final _pages = [HomePage(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Text(
              ' Creative App',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: _pages[_selected_index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected_index,
          onTap: (index) {
            setState(() {
              _selected_index = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
