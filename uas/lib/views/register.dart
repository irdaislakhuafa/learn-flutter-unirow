import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/etc/default_text_form_field.dart';
import 'package:uas/etc/session.dart';
import 'package:uas/views/list_class.dart';
import 'package:uas/views/register/register_status.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String? _npm;
  String? _password;

  @override
  Widget build(BuildContext context) {
    var result = Scaffold(
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
              padding: EdgeInsets.only(top: 10, bottom: 40),
              alignment: Alignment.center,
              child: Text(
                "UNIROW\nUniversitas PGRI Ronggolawe",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Config.defaultFontSize,
                  fontFamily: Config.defaultFontFamily,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: Card(
                elevation: 5,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name
                      Wrap(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10, top: 20),
                            child: Center(
                              child: Text(
                                "Nama",
                                style: Config.defaultTextStyle(context),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Theme.of(context).cardColor,
                                ),
                              ),
                              elevation: Config.defaultElevation,
                              child: TextFormField(
                                autocorrect: true,
                                autofocus: true,
                                decoration:
                                    Config.defaultInputTextDecoration(context),
                                style: Config.defaultTextStyle(context),
                                validator: (value) {
                                  // TODO: add validation
                                },
                                onChanged: (value) {
                                  setState(() {
                                    this._npm = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      // NIM/NPM
                      Wrap(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10, top: 20),
                            child: Center(
                              child: Text(
                                "NIM/NPM",
                                style: Config.defaultTextStyle(context),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Theme.of(context).cardColor,
                                ),
                              ),
                              elevation: Config.defaultElevation,
                              child: TextFormField(
                                autocorrect: true,
                                autofocus: true,
                                decoration:
                                    Config.defaultInputTextDecoration(context),
                                style: Config.defaultTextStyle(context),
                                validator: (value) {
                                  // TODO: add validation
                                },
                                onChanged: (value) {
                                  setState(() {
                                    this._npm = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Kata Sandi
                      Wrap(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10, top: 20),
                            child: Center(
                              child: Text(
                                "Kata Sandi",
                                style: Config.defaultTextStyle(context),
                              ),
                            ),
                          ),
                          Container(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Theme.of(context).cardColor,
                                ),
                              ),
                              elevation: Config.defaultElevation,
                              child: TextFormField(
                                obscureText: true,
                                obscuringCharacter: "*",
                                autocorrect: true,
                                autofocus: true,
                                decoration:
                                    Config.defaultInputTextDecoration(context),
                                style: Config.defaultTextStyle(context),
                                validator: (value) {
                                  // TODO: add validation
                                },
                                onChanged: (value) {
                                  setState(() {
                                    this._password = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Register button
                Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
                      // TODO: navigate here
                      var randomStatus = Random().nextBool();

                      var status = randomStatus
                          ? RegisterStatusOptions.SUCCESS
                          : RegisterStatusOptions.FAILED;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterStatus(
                              status: status,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Daftar",
                        style: Config.defaultTextStyle(
                          context,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // cancel button
                Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Batal",
                        style: Config.defaultTextStyle(
                          context,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

    return result;
  }
}
