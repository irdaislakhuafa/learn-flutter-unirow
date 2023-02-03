import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/etc/session.dart';
import 'package:uas/etc/user.dart';
import 'package:uas/views/list_class.dart';
import 'package:uas/views/register.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<Login> {
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
                      // NIM/NPM
                      Wrap(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
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

                      // login button
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).primaryColor),
                            elevation: MaterialStateProperty.all(8),
                          ),
                          onPressed: () {
                            // TODO: trigger validation
                            var user = User(
                              name: "irda islakhu afa",
                              npm: this._npm ?? "1412190011",
                              password: this._password ?? "irdaislakhuafa",
                            );

                            Session.setCurrentUser(context, user);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ListClass();
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: 200,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 15, bottom: 15),
                            child: Text(
                              "Masuk",
                              style: Config.defaultTextStyle(
                                context,
                                color: Colors.white,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // register
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Wrap(
                            runSpacing: 10,
                            children: [
                              Container(
                                child: Text(
                                  "Belum punya akun? ",
                                  style: Config.defaultTextStyle(context,
                                      color: Colors.black),
                                ),
                              ),
                              Container(
                                child: GestureDetector(
                                  child: Text(
                                    "Daftar",
                                    style: Config.defaultTextStyle(context,
                                        weight: FontWeight.bold),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return Register();
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return result;
  }
}
