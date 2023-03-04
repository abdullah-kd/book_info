import 'package:flutter/material.dart';

class Book {
  final String id;
  final String name;
  final List<String> categories;
  final String cover;
  final String price;
  final String background;
  final String pages;
  final String author;
  final String bookStore;
  final String description;

  Book({
    required this.id,
    required this.categories,
    required this.name,
    required this.cover,
    required this.price,
    required this.background,
    required this.pages,
    required this.author,
    required this.bookStore,
    required this.description,
  });
}
