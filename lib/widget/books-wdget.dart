import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookWidget extends StatelessWidget {
  final String id;
  final String name;
  final String cover;
  final String page;
  final String discreption;
  const BookWidget(
      {required this.id,
      required this.name,
      required this.cover,
      required this.page,
      required this.discreption});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            child: Image.asset(
              cover,
              width: 110,
              fit: BoxFit.cover,
              height: 180,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: 270,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontFamily: "bahji_normal", fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${discreption.substring(0, 90)}...",
                  style: TextStyle(fontFamily: "bahji_normal", fontSize: 14),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ژمارەی پەڕە: ${page}",
                      style: TextStyle(fontFamily: "bahji_normal"),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        onPressed: () => {
                              Navigator.pushNamed(context, '/book-details',
                                      arguments: id)
                                  .then((result) {
                                if (result != null) {}
                              })
                            },
                        child: Text(
                          'زیاتر',
                          style: TextStyle(
                            fontFamily: 'bahji_light',
                          ),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
