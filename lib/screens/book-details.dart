import 'package:books_info/data.dart';
import 'package:books_info/model/book.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final Function toggleFavorite;
  final Function _isBookFavourite;

  const BookDetails(this.toggleFavorite, this._isBookFavourite);

  Widget buildBooks(String title, String name) {
    return Column(
      children: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontFamily: "bahji_normal",
                  fontSize: 20,
                  color: Color(0xff003049)),
            ),
            Text(
              name,
              style: const TextStyle(
                  fontFamily: "bahji_light",
                  fontSize: 20,
                  color: Color(0xff003049)),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context)?.settings.arguments as String;
    final List<Book> bookFavourite = [];

    final book = Books.firstWhere(
      (book) => book.id == bookId,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          book.name,
          style: TextStyle(fontFamily: 'bahji_normal'),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Image.asset(book.background, fit: BoxFit.cover),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildBooks("ناوی کتێب: ", book.name),
                    buildBooks('ناوی نوسەر: ', book.author),
                    buildBooks('بەرهەمی کتێبخانەی: ', book.bookStore),
                    buildBooks('ژمارەی پەرە: ', book.pages),
                    buildBooks(' نرخی: ', book.price),
                    const Text(
                      "کورتەیەک دەربارەی کتێبەکە:",
                      style: TextStyle(
                          fontFamily: "bahji_normal",
                          fontSize: 20,
                          color: Color(0xff003049)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(15),
                      height: 320,
                      child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (ctx, i) => Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                  child: Text(
                                    book.description,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "bahji_light"),
                                  ),
                                ),
                              )),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => toggleFavorite(bookId),
        child: Icon(
          _isBookFavourite(bookId) ? Icons.star : Icons.star_border,
          color: Colors.white,
        ),
      ),
    );
  }
}
