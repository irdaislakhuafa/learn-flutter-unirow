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
            createInput(
              "Email",
              hintText: "Masukan email anda disini",
              keyboardType: TextInputType.emailAddress,
              icon: Icons.email,
            ),
            createInput(
              "Phone",
              hintText: "Masukan nomor anda disini",
              keyboardType: TextInputType.phone,
              icon: Icons.phone,
            ),
            createInput(
              "Repositoty",
              hintText: "Masukan url repository anda disini",
              keyboardType: TextInputType.url,
              icon: Icons.archive,
            ),
          ],
        ),
      ),
    );
  }

  Widget createInput(
    String? label, {
    String? hintText,
    bool? autofocus,
    IconData? icon,
    TextInputType? keyboardType,
    EdgeInsets? margin,
  }) {
    return Container(
      margin: margin ?? EdgeInsets.only(top: 15),
      child: TextFormField(
        keyboardType: keyboardType ?? TextInputType.text,
        autofocus: autofocus ?? true,
        decoration: InputDecoration(
          labelText: label ?? "Nama",
          hintText: hintText ?? "Masukan nama anda disini",
          icon: Icon(
            icon ?? Icons.people,
            color: Colors.blueAccent,
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
