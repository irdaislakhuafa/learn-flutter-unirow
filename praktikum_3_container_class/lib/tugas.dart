import 'package:flutter/material.dart';
import 'package:praktikum_3_container_class/conf.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Container createContainer({String? text}) {
    return Container(
      width: 250,
      height: 250,
      alignment: Alignment.center,
      color: Colors.blueAccent,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      child: Text(
        text ?? "1412190011 | Irda Islakhu Afa | 2019 B",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

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
          child: Column(
            children: [
              createContainer(),
              createContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
