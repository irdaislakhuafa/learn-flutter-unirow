import 'package:flutter/material.dart';

class Session {
  static String _npm = "";
  static String getCurrentNPM(BuildContext context) {
    return _npm;
  }

  static void setCurrentNPM(BuildContext context, String npm) {
    _npm = npm;
  }
}
