import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  Widget buildListTitle(String title, IconData icon, handleRoute) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      leading: Icon(
        icon,
        size: 28,
        color: Color(0xff003049),
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontFamily: 'bahji_light', color: Color(0xff003049)),
      ),
      onTap: handleRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'کتێب ناسی',
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'bahji_normal',
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle('کتێبەکان', Icons.menu_book, () {
            Navigator.of(context).pushNamed('/');
          }),
          Divider(),
          buildListTitle('دەربارەی ئەپەکە', Icons.info, () {
            Navigator.of(context).pushNamed('/about-app');
          }),
          Divider(),
          buildListTitle('دەرباری ئێمە', Icons.perm_device_information, () {
            Navigator.of(context).pushNamed('/about-us');
          }),
        ]),
      ),
    );
  }
}
