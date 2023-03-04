import 'package:books_info/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'دەربارەی ئێمە',
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
              Text(
                'گروپی نانۆ سۆفت',
                style: TextStyle(
                    fontFamily: 'bahji_bold',
                    fontSize: 24,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                " ئێمە تیمێکی گەنج و کەسانی بەتواناین کە خولیای پەرەپێدانی وێب و دیزاینی گرافیکمان هەیە. ئێمە ئەم کۆمپانیایەمان بە ئامانجی دابینکردنی چارەسەری داهێنەرانە و کوالیتی بەرز بۆ بزنسەکان بە هەموو قەبارەکانەوە دەستپێکرد. تیمەکەمان کۆمەڵێک کارامەیی و شارەزایی جۆراوجۆر کۆدەکاتەوە، لەوانە پەرەپێدانی وێب، دیزاینی گرافیک، بەڕێوەبردنی سۆشیال میدیا، و بەبازاڕکردنی دیجیتاڵی. ئێمە بەردەوام فێر دەبین و گەشە دەکەین، لە نوێترین ڕەوت و تەکنەلۆژیاکاندا دەمێنینەوە بۆ ئەوەی دڵنیا بین لەوەی کە باشترین خزمەتگوزاری پێشکەش بە کڕیارەکانمان دەکەین.",
                style: TextStyle(fontFamily: "bahji_normal", height: 2),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    size: 35,
                    color: Color(0xff003049),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Nano Soft',
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'bahji_light',
                      color: Color(0xff003049),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    size: 35,
                    color: Color(0xff003049),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '4785 745 0750',
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'bahji_light',
                      color: Color(0xff003049),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
