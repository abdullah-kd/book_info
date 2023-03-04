import 'package:books_info/model/book.dart';
import 'package:books_info/widget/books-wdget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BooksScreen extends StatelessWidget {
  final List<Book> avalableBooks;
  const BooksScreen(this.avalableBooks);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = args['name'];
    final categoyrtId = args['id'];
    final categoryBook = avalableBooks.where((book) {
      // ignore: iterable_contains_unrelated_type
      return book.categories.contains(categoyrtId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            categoryTitle!,
            style: TextStyle(fontFamily: 'bahji_normal'),
          ),
        ),
        body: ListView.builder(
            itemCount: categoryBook.length,
            itemBuilder: ((context, index) {
              return BookWidget(
                  id: categoryBook[index].id,
                  name: categoryBook[index].name,
                  cover: categoryBook[index].cover,
                  discreption: categoryBook[index].description,
                  page: categoryBook[index].pages);
            })));
  }
}
