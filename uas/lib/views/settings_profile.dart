import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/etc/session.dart';

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
      Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Container(
            child: Wrap(
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.only(top: 10, left: 5),
                  child: Image.asset("assets/images/person.png"),
                ),
                Container(
                  width: 140,
                  margin: EdgeInsets.only(top: 2, left: 5),
                  child: TextFormField(
                    initialValue: user.name.toUpperCase(),
                    style: Config.defaultTextStyle(context),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: user.name.toUpperCase(),
                      hintStyle: Config.defaultTextStyle(context),
                    ),
                    onChanged: (value) {
                      // TODO: add validation here
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // npm
      Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Container(
            child: Wrap(
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.only(top: 10, left: 5),
                  child: Image.asset("assets/images/person.png"),
                ),
                Container(
                  width: 140,
                  margin: EdgeInsets.only(top: 2, left: 5),
                  child: TextFormField(
                    initialValue: user.npm.toUpperCase(),
                    style: Config.defaultTextStyle(context),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: user.npm.toUpperCase(),
                      hintStyle: Config.defaultTextStyle(context),
                    ),
                    onChanged: (value) {
                      // TODO: add validation here
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // password
      Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Container(
            child: Wrap(
              children: [
                Container(
                  height: 40,
                  margin: EdgeInsets.only(top: 10, left: 5),
                  child: Image.asset("assets/images/person.png"),
                ),
                Container(
                  width: 140,
                  margin: EdgeInsets.only(top: 2, left: 5),
                  child: TextFormField(
                    initialValue: user.password.toUpperCase(),
                    style: Config.defaultTextStyle(context),
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: user.password.toUpperCase(),
                      hintStyle: Config.defaultTextStyle(context),
                    ),
                    onChanged: (value) {
                      // TODO: add validation here
                    },
                  ),
                ),
                // TODO: add button to show password field
                GestureDetector(
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.only(top: 12, left: 10),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  onTap: () {
                    // TODO: show password field
                  },
                ),
              ],
            ),
          ),
        ),
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
