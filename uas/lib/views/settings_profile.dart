import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/etc/session.dart';

import '../etc/default_text_form_field.dart';

class SettingsProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    var state = _SettingsProfileState();
    return state;
  }
}

class _SettingsProfileState extends State<SettingsProfile> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _npm = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    final user = Session.getCurrentUser(context);

    var items = [
      // avatar
      Container(
        height: 130,
        margin: EdgeInsets.only(bottom: 50, top: 50),
        child: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Container(
            child: Text(
              user.name.substring(0, 1).toUpperCase(),
              style: Config.defaultTextStyle(
                context,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
        ),
      ),

      // user name
      DefaultTextFormField(
        initialValue: user.name,
        icon: Image.asset("assets/images/person.png"),
        iconHeight: 35.0,
      ),

      // npm
      DefaultTextFormField(
        initialValue: user.npm,
        icon: Image.asset("assets/images/card.png"),
        iconHeight: 30.0,
      ),

      // password
      DefaultTextFormField(
        icon: Image.asset("assets/images/lock.png"),
        initialValue: user.password,
        secured: true,
        iconHeight: 30.0,
      ),
    ];

    return Scaffold(
      body: Form(
        key: this._formKey,
        child: Container(
          child: ListView(
            children: items,
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // save
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {
                // TODO: save here
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Simpan",
                  style: Config.defaultTextStyle(context, color: Colors.white),
                ),
              ),
            ),
          ),

          // cancel
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Batal",
                  style: Config.defaultTextStyle(context, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
