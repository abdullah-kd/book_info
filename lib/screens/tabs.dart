import 'dart:ui';

import 'package:books_info/widget/drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../model/book.dart';
import '/screens/categorys.dart';
import '/screens/favorites.dart';
import '/screens/homepage.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  final List<Book> bookFavourite;
  const Tabs(this.bookFavourite);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {"title": "کتێبەکان", "body": HomePage()},
      {"title": "جۆرەکان", "body": CategoriesPage()},
      {
        "title": "کتێبە دڵخوازەکانم",
        "body": FavoritesPage(widget.bookFavourite)
      },
    ];
    super.initState();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 244, 255),
      appBar: AppBar(
        title: Text(
          _pages[_selectedIndex]["title"] as String,
          style: TextStyle(fontFamily: 'bahji_normal'),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const CustomDrawer(),
      body: _pages[_selectedIndex]["body"] as Widget,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 226, 244, 255),
        items: [
          Icon(
            Icons.library_books_outlined,
            color: Theme.of(context).primaryColor,
          ),
          Icon(Icons.category_outlined, color: Theme.of(context).primaryColor),
          Icon(Icons.favorite_border, color: Theme.of(context).primaryColor)
        ],
        onTap: _onItemTapped,
        height: 55,
      ),
    );
  }
}
