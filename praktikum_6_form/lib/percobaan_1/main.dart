import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_6_form/conf.dart';
import 'package:praktikum_6_form/main.dart';

void main() => runApp(
      MaterialApp(
        title: Conf.title,
        home: LearnTextFormField(),
      ),
    );

class LearnTextFormField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnTextFormField();
  }
}

class _LearnTextFormField extends State<LearnTextFormField> {
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
              decoration: const InputDecoration(
                labelText: "Nama",
                hintText: "Masukan nama anda disini",
                icon: Icon(
                  Icons.people,
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
