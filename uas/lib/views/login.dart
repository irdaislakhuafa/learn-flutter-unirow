import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

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
                      Text("NIM/NPM", style: Config.defaultTextStyle(context)),
                      TextFormField(
                        autocorrect: true,
                        autofocus: true,
                        decoration: Config.defaultInputTextDecoration(context),
                        style: Config.defaultTextStyle(context),
                      ),
                      // Kata Sandi
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          "Kata Sandi",
                          style: Config.defaultTextStyle(context),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        autocorrect: true,
                        autofocus: true,
                        decoration: Config.defaultInputTextDecoration(context),
                        style: Config.defaultTextStyle(context),
                      ),

                      // login button
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
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
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Belum punya akun? ",
                              style: Config.defaultTextStyle(context,
                                  color: Colors.black),
                            ),
                            GestureDetector(
                              child: Text(
                                "Daftar",
                                style: Config.defaultTextStyle(context,
                                    weight: FontWeight.bold),
                              ),
                              onTap: () {
                                // TODO: navigate
                              },
                            )
                          ],
                        ),
                      )
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
