import 'package:flutter/material.dart';
import 'package:praktikum_2_widget/conf.dart';

void main() {
  runApp(MyApp());
}

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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text(
                  "This text is Bold",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "This text is Italic",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  "This font size is 20",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "This text color is blue",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
