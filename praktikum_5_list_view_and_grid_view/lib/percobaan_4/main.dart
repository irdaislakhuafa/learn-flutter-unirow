import 'package:flutter/cupertino.dart';
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
        appBar: Conf.defaultAppBar,
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (index) {
            if (((index + 1) % 2) == 0) {
              return const FlutterLogo();
            }
            return Card(
              margin: const EdgeInsets.all(10),
              elevation: 50,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Text(
                  "Element ${index + 1}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
