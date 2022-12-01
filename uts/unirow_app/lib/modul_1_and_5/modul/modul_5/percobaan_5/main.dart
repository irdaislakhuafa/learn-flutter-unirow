import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_5/conf.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final List<String> character =
      "abcdefghijklmnopqrstuvwxyz".toUpperCase().split("");

  @override
  Widget build(BuildContext context) {
    List<Widget> listView = [
      GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 3,
        children: List.generate(
          character.length,
          (index) {
            return Card(
              elevation: 50,
              margin: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Text(
                  character[index],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
      const Card(
        elevation: 80,
        margin: EdgeInsets.all(80),
        child: FlutterLogo(),
      ),
    ];

    listView.addAll(
      Iterable.generate(
        5,
        (index) => const Card(
          elevation: 80,
          margin: EdgeInsets.all(80),
          child: FlutterLogo(),
        ),
      ),
    );

    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: Conf.defaultAppBar,
        body: GridView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          children: listView,
        ),
      ),
    );
  }
}
