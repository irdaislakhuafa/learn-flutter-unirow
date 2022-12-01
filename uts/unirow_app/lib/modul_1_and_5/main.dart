import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_1/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/3.dart';
import 'package:unirow_app/modul_1_and_5/modul/4.dart';
import 'package:unirow_app/modul_1_and_5/modul/5.dart';
import 'package:unirow_app/unirow_app/main.dart';

void main() => runApp(
      MaterialApp(
        title: "Modul 1 - 5",
        home: new App(),
        routes: {
          "/moduls": (context) => App(),
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
          "/modul/4": (context) => Modul4(),
          "/modul/5": (context) => Modul5(),
        },
      ),
    );

class App extends StatelessWidget {
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
            action: () => Navigator.pushNamed(context, "/modul/1"),
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
