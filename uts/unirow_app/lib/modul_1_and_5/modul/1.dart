import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/main.dart';
import 'package:unirow_app/unirow_app/main.dart';

class Modul1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Modul 1",
          style: TextStyle(
            fontFamily: DefaultFontFamily,
          ),
        ),
      ),
      body: ListView(
        children: [
          App.createButtonModul(
            "Back",
            action: () => Navigator.pushNamed(context, "/moduls"),
          )
        ],
      ),
    );
  }
}
