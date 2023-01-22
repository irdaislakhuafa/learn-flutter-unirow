import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var result = MaterialApp(
      title: "Unirow | Login Page",
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              // unirow logo
              Container(
                padding: EdgeInsets.only(top: 20),
                width: 100,
                height: 150,
                child: Image.asset("assets/images/unirow-logo.png"),
              ),

              // label
              Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Text(
                  "UNIROW\nUniversitas PGRI Ronggolawe",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return result;
  }
}
