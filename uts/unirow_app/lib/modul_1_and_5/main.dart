import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_1/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_3/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_4/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_5/5.dart';
import 'package:unirow_app/unirow_app/main.dart';

void main() => runApp(
      MaterialApp(
        title: "Modul 1 - 5",
        home: new App(),
        routes: {
          "/modul/1": (context) => Modul1(),
          "/modul/2": (context) => Modul2(),
          "/modul/2/percobaan/1": (context) => Modul2Percobaan1(),
          "/modul/2/percobaan/2": (context) => Modul2Percobaan2(),
          "/modul/2/percobaan/3": (context) => Modul2Percobaan3(),
          "/modul/2/percobaan/4": (context) => Modul2Percobaan4(),
          "/modul/2/percobaan/5": (context) => Modul2Percobaan5(),
          "/modul/2/percobaan/6": (context) => Modul2Percobaan6(),
          "/modul/2/task": (context) => Modul2Task(),
          "/modul/3": (context) => Modul3(),
          "/modul/3/percobaan/1": (context) => Modul3Percobaan1(),
          "/modul/3/percobaan/2": (context) => Modul3Percobaan2(),
          "/modul/3/percobaan/3": (context) => Modul3Percobaan3(),
          "/modul/3/percobaan/4": (context) => Modul3Percobaan4(),
          "/modul/3/percobaan/5": (context) => Modul3Percobaan5(),
          "/modul/3/percobaan/6": (context) => Modul3Percobaan6(),
          "/modul/3/task": (context) => Modul3Task(),
          "/modul/4": (context) => Modul4(),
          "/modul/4/appbar": (context) => Modul4AppBar(),
          "/modul/4/percobaan/1": (context) => Modul4Percobaan1(),
          "/modul/4/percobaan/2": (context) => Modul4Percobaan2(),
          "/modul/4/percobaan/3": (context) => Modul4Percobaan3(),
          "/modul/4/percobaan/4": (context) => Modul4Percobaan4(),
          "/modul/4/percobaan/5": (context) => Modul4Percobaan5(),
          "/modul/4/percobaan/6": (context) => Modul4Percobaan6(),
          "/modul/5": (context) => Modul5(),
        },
      ),
    );

class App extends StatelessWidget {
  static Widget labelPercobaan() {
    return Container(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Irda Islakhu Afa | 1412190011",
          style: TextStyle(fontFamily: DefaultFontFamily),
        ),
      ),
      body: ListView(
        children: [
          createButtonModul(
            "Modul 1",
            action: () => Navigator.pushNamed(context, "/modul2"),
          ),
          createButtonModul(
            "Modul 2",
            action: () => Navigator.pushNamed(context, "/modul/2"),
            margin_1: EdgeInsets.only(top: 10),
          ),
          createButtonModul(
            "Modul 3",
            action: () => Navigator.pushNamed(context, "/modul/3"),
            margin_1: EdgeInsets.only(top: 10),
          ),
          createButtonModul(
            "Modul 4",
            action: () => Navigator.pushNamed(context, "/modul/4"),
            margin_1: EdgeInsets.only(top: 10),
          ),
          createButtonModul(
            "Modul 5",
            action: () => Navigator.pushNamed(context, "/modul/5"),
            margin_1: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }

  static Widget createButtonModul(
    String name, {
    EdgeInsetsGeometry? margin_1,
    void Function()? action,
  }) {
    return Container(
      margin: margin_1 ?? const EdgeInsets.only(top: 50),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 100),
        child: Card(
          elevation: 10,
          child: TextButton(
            onPressed: action ??
                () {
                  print("Not implemented");
                },
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                name ?? "Modul 1",
                style: TextStyle(
                  fontFamily: DefaultFontFamily,
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
