import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/1.dart';
import 'package:unirow_app/modul_1_and_5/modul/2.dart';
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
          )
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
