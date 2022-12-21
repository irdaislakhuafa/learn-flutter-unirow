import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_6_form/conf.dart';

void main() => runApp(
      MaterialApp(
        title: Conf.title,
        home: LearnTextFormFieldKeyboardType(),
      ),
    );

class LearnTextFormFieldKeyboardType extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnTextFormFieldKeyboardType();
  }
}

class _LearnTextFormFieldKeyboardType
    extends State<LearnTextFormFieldKeyboardType> {
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
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Masukan email anda disini",
                icon: Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
