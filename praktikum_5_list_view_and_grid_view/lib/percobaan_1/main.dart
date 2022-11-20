import 'package:flutter/material.dart';
import 'package:praktikum_5_list_view_and_grid_view/conf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Conf.title),
          centerTitle: true,
        ),
        body: Text("hello world"),
      ),
    );
  }
}
