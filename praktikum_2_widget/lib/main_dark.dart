import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainView());
}

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: "My First App",
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: const Center(
          child: Text("This Is My First Text"),
        ),
      ),
    );
  }
}
