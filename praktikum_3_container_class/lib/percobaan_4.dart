import 'package:flutter/material.dart';
import 'package:praktikum_3_container_class/conf.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Config.title),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20),
          color: Colors.blueAccent,
          width: 200,
          height: 200,
          child: Text(
            "This is a text",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
