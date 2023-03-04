import 'package:books_info/model/book.dart';
import 'package:books_info/widget/books-wdget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoritesPage extends StatelessWidget {
  final List<Book> bookFavourite;

  const FavoritesPage(this.bookFavourite);

  @override
  Widget build(BuildContext context) {
    if (bookFavourite.isEmpty) {
      return Center(
        child: Text(
          'هێشتا هیچ کتێبێکی دڵخوازت نییە',
          style: TextStyle(fontFamily: 'bahji_normal', fontSize: 20),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return BookWidget(
                id: bookFavourite[index].id,
                name: bookFavourite[index].name,
                cover: bookFavourite[index].cover,
                discreption: bookFavourite[index].description,
                page: bookFavourite[index].pages);
          }),
          itemCount: bookFavourite.length,
        ),
      );
    }
  }
}
