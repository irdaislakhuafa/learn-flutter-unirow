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
          body: Center(
            child: Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              transform: Matrix4.rotationZ(0.2),
              height: 200,
              width: 200,
              child: Text(
                "This is text",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          )),
    );
  }
}
