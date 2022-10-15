import 'package:flutter/material.dart';
import 'package:praktikum_2_widget/conf.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            Conf.title,
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontSize: Conf.defaultFontSize,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "This is text with DancingScript-Regular font",
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontSize: Conf.defaultFontSize,
            ),
          ),
        ),
      ),
    );
  }
}
