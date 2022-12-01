import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/conf.dart';

class Modul4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      App.labelPercobaan(),
      App.createButtonModul(
        "App Bar",
        margin_1: EdgeInsets.all(0),
        action: () => Navigator.pushNamed(context, "/modul/4/appbar"),
      ),
    ];

    for (int i = 1; i <= 6; i++) {
      items.add(
        App.createButtonModul(
          "${i}",
          action: () => Navigator.pushNamed(context, "/modul/4/percobaan/${i}"),
          margin_1: EdgeInsets.all(0),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Modul 3"),
        centerTitle: true,
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}

class Modul4AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.code),
        centerTitle: true,
        title: Text("App Bar"),
        backgroundColor: Colors.black,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: App.createButtonModul(
          "Kembali",
          action: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
