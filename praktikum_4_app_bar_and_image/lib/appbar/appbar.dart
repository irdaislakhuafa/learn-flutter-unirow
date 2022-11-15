import 'package:flutter/material.dart';
import 'package:praktikum_4_app_bar_and_image/conf.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Conf.title),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
