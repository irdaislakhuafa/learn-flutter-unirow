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
          i.toString(),
          action: () => Navigator.pushNamed(
              context, "/modul/2/percobaan/" + i.toString()),
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
