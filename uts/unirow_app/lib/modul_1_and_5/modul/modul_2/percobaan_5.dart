import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/conf.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Text createText(String text,
      {String? fontFamily, double? fontSize, TextAlign? textAlign}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? "Arial",
        fontSize: fontSize ?? Conf.defaultFontSize,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }

  @override
  Widget build(BuildContext context) {
    const String viewText =
        "This is my first time to learn Flutter and Dart | ";
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            Conf.title,
            style: TextStyle(
              fontSize: Conf.defaultFontSize,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            createText("${viewText}CENTER",
                fontFamily: 'DancingScript', textAlign: TextAlign.center),
            createText("${viewText}LEFT", textAlign: TextAlign.left),
            createText("${viewText}RIGHT", textAlign: TextAlign.right),
            createText("${viewText}JUSTIFY", textAlign: TextAlign.justify),
            createText("${viewText}START", textAlign: TextAlign.start),
            createText("${viewText}END", textAlign: TextAlign.end),
          ],
        ),
      ),
    );
  }
}
