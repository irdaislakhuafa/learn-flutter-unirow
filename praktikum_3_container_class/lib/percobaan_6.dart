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
            width: 200,
            height: 200,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  "https://unirow.ac.id/wp-content/uploads/2022/03/unirow.png",
                ),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.lightBlue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
