import 'package:books_info/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'دەربارەی ئەپەکە',
          style: TextStyle(fontFamily: 'bahji_normal'),
        ),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/icon/appstore.png',
                height: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'بەخێربێن بۆ ئەپی کتێبناسی ',
                style: TextStyle(
                    fontFamily: 'bahji_bold',
                    fontSize: 24,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "ئەپێکە کە لە رێگەیەوە دەتوانیت کتێبی نوێ بدۆزیتەوە، ئاگاداری لیستی خوێندنەوەت بیت، و بەدواداچوون بۆ ژانرە جۆراوجۆرەکان بکەیت. ئەپەکەمان بە شێوەیەک دروست کراوە کە خوێندنەوەی داهاتووتان بە ئاسانی بدۆزیتەوە،. دەتوانیت بە خێرایی و بە ئاسانی کتێبەکان بدۆزیتەوە بە پشتبەستن بە ناوی کتێبەکە، یان نووسەر،. هەر کتێبێک لە ئەپەکەماندا وێنەی بەرگ و ناوی نووسەر و کورتەیەک و وردەکارییەکانی نرخ لەخۆدەگرێت، بۆیە دەتوانیت هەموو ئەو زانیاریانەی کە پێویستتە پێش کڕین بەدەستبهێنیت. هەروەها دەتوانیت کتێبەکان زیاد بکەیت بۆ لیستی دڵخوازەکانت، بۆ ئەوەی بە ئاسانی بتوانیت خوێندنەوە دڵخوازەکانت بدۆزیتەوە و سەردانی بکەیتەوە.",
                style: TextStyle(fontFamily: "bahji_normal", height: 2),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
