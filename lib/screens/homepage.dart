import 'package:books_info/data.dart';
import 'package:books_info/model/book.dart';
import 'package:books_info/widget/books-wdget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Book> books = List.from(Books);
  List<Book> _foundBooks = [];
  @override
  void initState() {
    _foundBooks = books;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Book> result = [];
    void updateBooks(String value) {
      if (value.isEmpty) {
        result = books;
      } else {
        result =
            books.where((element) => element.name.contains(value)).toList();
      }

      setState(() {
        _foundBooks = result;
      });
    }

    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              onChanged: (value) {
                updateBooks(value);
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  hintText: "کتێبەکەت بدۆزەوە...",
                  hintStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'bahji_light',
                      fontSize: 16),
                  prefixIconColor: Theme.of(context).primaryColor,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).primaryColor,
                    size: 28,
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                          width: 2, color: Theme.of(context).primaryColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                          width: 3, color: Theme.of(context).primaryColor))),
            ),
          ),
          Expanded(
            child: _foundBooks.length == 0
                ? Center(
                    child: Text(
                      'ببورە هیچ کتێبێک نەدۆزرایەوە',
                      style:
                          TextStyle(fontFamily: 'bahji_normal', fontSize: 20),
                    ),
                  )
                : ListView.builder(
                    itemCount: _foundBooks.length,
                    itemBuilder: ((context, index) {
                      return BookWidget(
                          id: _foundBooks[index].id,
                          name: _foundBooks[index].name,
                          cover: _foundBooks[index].cover,
                          discreption: _foundBooks[index].description,
                          page: _foundBooks[index].pages);
                    })),
          )
        ],
      ),
    );
  }
}
