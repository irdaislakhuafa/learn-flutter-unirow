import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_6_form/conf.dart';

void main(List<String> args) {
  runApp(LearnForm());
}

class LearnForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnStateForm();
  }
}

class _LearnStateForm extends State<LearnForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget inputField({
    String? labelText,
    String? hintText,
    EdgeInsets? marginContainer,
    bool? password,
    IconData? iconData,
    TextInputType? inputType,
    String? errorValidationText,
    String? Function(String?)? validator,
  }) {
    return Container(
      margin: marginContainer ??
          const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
      child: TextFormField(
        autofocus: true,
        keyboardType: inputType ?? TextInputType.text,
        obscureText: password ?? false,
        obscuringCharacter: "•",
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          hintText: hintText ?? "Write here!",
          hintStyle: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 12,
          ),
          labelText: labelText ?? "Name",
          icon: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Icon(
              iconData ?? Icons.people,
              color: Colors.blueAccent,
            ),
          ),
          labelStyle: const TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.normal,
            fontFamily: 'Arial',
          ),
          contentPadding: const EdgeInsets.only(left: 10),
        ),
        validator: validator ??
            (value) {
              if (value == null || value.isEmpty || value.trim() == "") {
                return errorValidationText ?? "Cannot null or empty";
              }
              return null;
            },
        enableSuggestions: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: Conf.appBar,
        body: Stack(
          children: [
            Form(
              key: _formKey,
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    child: const Text(
                      "Form Example Flutter",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  inputField(
                    labelText: "Name",
                    hintText: "Ex. Irda Islakhu Afa",
                    errorValidationText: "Name cannot be null!",
                  ),
                  inputField(
                    labelText: "Email",
                    hintText: "Ex. irda@gmail.com",
                    iconData: Icons.email,
                    marginContainer:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    validator: (value) {
                      value = value ?? "";
                      if (value.trim() == "") {
                        return "Email cannot be empty";
                      }

                      RegExp emailPattern = RegExp(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
                      );

                      return (emailPattern.hasMatch(value))
                          ? null
                          : "Invalid email format!";
                    },
                  ),
                  inputField(
                    marginContainer:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    labelText: "Password",
                    iconData: Icons.lock,
                    password: true,
                    hintText: "Ex. my_password",
                  ),
                  inputField(
                    marginContainer:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    labelText: "Phone",
                    hintText: "Ex. 0822xxxxxxx",
                    inputType: TextInputType.phone,
                    iconData: Icons.phone,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 30, bottom: 30),
                      child: ElevatedButton(
                        onPressed: () => _formKey.currentState!.validate(),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueAccent),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          child: const Text("Submit"),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: ElevatedButton(
                        onPressed: () => _formKey.currentState!.reset(),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blueAccent),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          child: const Text("Reset"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
