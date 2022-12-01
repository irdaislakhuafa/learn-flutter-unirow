import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/conf.dart';
import 'package:unirow_app/modul_1_and_5/main.dart';
import 'package:unirow_app/unirow_app/main.dart';

class Modul2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      Container(
        margin: EdgeInsets.only(top: 30, bottom: 20),
        child: Center(
          child: Text(
            "Percobaan",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontFamily: DefaultFontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ];

    for (int i = 1; i <= 6; i++) {
      items.add(
        App.createButtonModul(
          "${i}",
          action: () => Navigator.pushNamed(context, "/modul/2/percobaan/${i}"),
          margin_1: EdgeInsets.all(0),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Modul 2",
          style: TextStyle(fontFamily: DefaultFontFamily),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}

class Modul2Percobaan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan 1"),
      ),
      body: Center(
        child: Text(
          "This Is My First Text",
          style: TextStyle(
            fontSize: Conf.defaultFontSize,
          ),
        ),
      ),
    );
  }
}

class Modul2Percobaan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan 2"),
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
      ),
    );
  }
}

class Modul2Percobaan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Percoban 3",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: Conf.defaultFontSize,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "This is text with DancingScript-Regular font",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: Conf.defaultFontSize,
          ),
        ),
      ),
    );
  }
}

class Modul2Percobaan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String text = "Learn Flutter and Dart :";

    return Scaffold(
      appBar: AppBar(
        title: Text("Percobaan 4"),
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
    );
  }
}

class Modul2Percobaan5 extends StatelessWidget {
  Text createText(String text,
      {String? fontFamily, double? fontSize, TextAlign? textAlign}) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? "Arial",
        fontSize: fontSize ?? Conf.defaultFontSize,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }

  @override
  Widget build(BuildContext context) {
    const String viewText =
        "This is my first time to learn Flutter and Dart | ";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Conf.title,
          style: TextStyle(
            fontSize: Conf.defaultFontSize,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          createText("${viewText}CENTER",
              fontFamily: 'DancingScript', textAlign: TextAlign.center),
          createText("${viewText}LEFT", textAlign: TextAlign.left),
          createText("${viewText}RIGHT", textAlign: TextAlign.right),
          createText("${viewText}JUSTIFY", textAlign: TextAlign.justify),
          createText("${viewText}START", textAlign: TextAlign.start),
          createText("${viewText}END", textAlign: TextAlign.end),
        ],
      ),
    );
  }
}
