import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_4_app_bar_and_image/conf.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(Conf.title),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.blue,
                  Colors.green,
                ])),
          ),
        ),
      ),
    );
  }
}
