import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryWedgit extends StatelessWidget {
  final String id;
  final String name;
  final icon;

  const CategoryWedgit({required this.id, required this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.pushNamed(context, '/books',
            arguments: {'id': id, "name": name})
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(5, 15, 5, 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                width: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'bahji_normal',
                    fontSize: 20,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
