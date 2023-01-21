import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = MaterialApp(
      title: "Unirow | Login Page",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Login"),
        ),
        body: const Text("Hello World"),
      ),
    );

    return result;
  }
}
