import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:praktikum_5_list_view_and_grid_view/conf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Conf.title),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Card(
              elevation: 50,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Flutter Widget: Penggunaan ListView Class",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(15),
              elevation: 50,
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  repeat(text: Conf.dummyText, value: 3),
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  static String repeat({int? value, String? text}) {
    String result = text ?? "";
    for (int i = 0; i < (value ?? 0); i++) {
      result += result;
    }
    return result;
  }
}
