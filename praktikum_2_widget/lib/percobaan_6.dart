import 'package:flutter/material.dart';
import 'package:praktikum_2_widget/conf.dart';
import 'package:praktikum_2_widget/percobaan_1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String viewText =
      "This is my first time to learn Dart with Flutter framework, it's really nice to be able to learn Flutter easily and fun";

  Text genTextOverf(String text, TextOverflow? overflow) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Conf.defaultFontSize,
      ),
      overflow: overflow,
      maxLines: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            Conf.title,
            style: TextStyle(fontSize: Conf.defaultFontSize - 10),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            genTextOverf("ELLIPSIS: ${viewText}", TextOverflow.ellipsis),
            genTextOverf("CLIP: ${viewText}", TextOverflow.clip),
            genTextOverf("FADE: ${viewText}", TextOverflow.fade),
            genTextOverf("VISIBLE: ${viewText}", TextOverflow.visible),
          ],
        ),
      ),
    );
  }
}
