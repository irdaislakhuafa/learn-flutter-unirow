import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/conf.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String text = "Learn Flutter and Dart :";
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Conf.title),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: Conf.defaultFontSize,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.blue[700]!,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: Conf.defaultFontSize,
                  foreground: Paint()
                    ..style = PaintingStyle.fill
                    ..strokeWidth = 6
                    ..color = Colors.blue[200]!,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: Conf.defaultFontSize,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
