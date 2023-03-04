import 'package:books_info/data.dart';
import 'package:books_info/model/book.dart';
import 'package:books_info/screens/about-app.dart';
import 'package:books_info/screens/about-us.dart';
import 'package:books_info/screens/book-details.dart';
import 'package:books_info/screens/books.dart';

import 'package:books_info/screens/tabs.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Book> _avalableBook = Books;
  final List<Book> bookFavourite = [];

  void _toggleFavorite(bookId) {
    final existingIndex = bookFavourite.indexWhere((book) => book.id == bookId);
    setState(() {
      if (existingIndex >= 0) {
        bookFavourite.removeAt(existingIndex);
      } else {
        bookFavourite.add(
          Books.firstWhere((meal) => meal.id == bookId),
        );
      }
    });
  }

  bool _isBookFavourite(String id) {
    return bookFavourite.any((book) => book.id == id);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const myDark = Color(0xff003049);
    const myRed = Color(0xff780000);
    const myLight = Color(0xfffdf0d5);
    const myLightRed = Color(0xffc1121f);
    const myLightblue = Color(0xfff669bbc);
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      theme: ThemeData(
        primaryColor: myDark,
        accentColor: myRed,
      ),
      locale: Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales,
      routes: {
        ('/'): (context) => Tabs(bookFavourite),
        ('/books'): (context) => BooksScreen(_avalableBook),
        ('/book-details'): (context) =>
            BookDetails(_toggleFavorite, _isBookFavourite),
        ('/about-us'): (context) => const AboutUs(),
        ('/about-app'): (context) => const AboutApp(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return PageTransition(
              child: Tabs(bookFavourite),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 300),
            );
          case '/books':
            return PageTransition(
              child: BooksScreen(_avalableBook),
              type: PageTransitionType.rightToLeft,
              duration: const Duration(milliseconds: 500),
            );
          case '/book-details':
            return PageTransition(
              child: BookDetails(_toggleFavorite, _isBookFavourite),
              type: PageTransitionType.bottomToTop,
              duration: const Duration(milliseconds: 400),
            );
          default:
            return null;
        }
      },
    );
  }
}
