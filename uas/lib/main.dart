import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/views/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: const Color.fromARGB(255, 61, 132, 237),
      cardColor: Colors.white,
      fontFamily: Config.defaultFontFamily,
    ),
    home: _checkAuth(),
  ));
}

Widget? _checkAuth() {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  String? token = "";
  _prefs.then((value) {
    token = value.getString("token");
  });

  if (token != null && !token!.isEmpty) {
// TODO: add homepage
    return Text("home page");
  }

  return Login();
}
