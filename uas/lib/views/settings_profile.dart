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
  @override
  Widget build(BuildContext context) {
    final avatar =
        Session.getCurrentUser(context).name.substring(0, 1).toUpperCase();

    var items = [
      // avatar
      Container(
        height: 130,
        child: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Container(
            child: Text(
              avatar,
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
        child: Card(
          child: Container(
            child: Wrap(
              children: [
                Container(
                  child: Icon(
                    Icons.person_outline_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
      // npm
      // password
    ];

    return Scaffold(
      body: Container(
        child: ListView(
          children: items,
        ),
      ),
    );
  }
}
