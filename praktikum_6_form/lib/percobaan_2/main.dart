import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_6_form/conf.dart';

void main() => runApp(
      MaterialApp(
        title: Conf.title,
        home: LearnTextFormFieldPassword(),
      ),
    );

class LearnTextFormFieldPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnTextFormFieldPassword();
  }
}

class _LearnTextFormFieldPassword extends State<LearnTextFormFieldPassword> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conf.appBar,
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            TextFormField(
              obscureText: true,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Masukan password anda disini",
                icon: Icon(
                  Icons.lock,
                  color: Colors.blueAccent,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
