import 'package:books_info/data.dart';
import 'package:books_info/widget/catigory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 5 / 4,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          children: Categories.map((catItem) => CategoryWedgit(
              id: catItem.id,
              name: catItem.name,
              icon: catItem.icon)).toList()),
    );
  }
}
