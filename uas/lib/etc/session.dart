import 'package:flutter/material.dart';
import 'package:uas/etc/user.dart';

class Session {
  static String _npm = "";
  static User _defaultUser =
      new User(name: "unknown", npm: "00000000", password: "00000000");
  static User? _user = null;

  static String getCurrentNPM(BuildContext context) {
    return _npm;
  }

  static void setCurrentNPM(BuildContext context, String npm) {
    _npm = npm;
  }

  static User getCurrentUser(BuildContext context) {
    if (_user == null) {
      return _defaultUser;
    } else {
      return _user!;
    }
  }

  static void setCurrentUser(BuildContext context, User user) {
    _user = user;
  }
}
