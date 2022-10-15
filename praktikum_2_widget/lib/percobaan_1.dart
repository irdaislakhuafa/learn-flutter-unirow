import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum_2_widget/conf.dart';

void main() {
  runApp(MyApp());
}

const String title = "Irda Islakhu Afa | Widget";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Text(
          "This Is My First Text",
          style: TextStyle(
            fontSize: Conf.defaultFontSize,
          ),
        ),
      ),
    );
  }
}
