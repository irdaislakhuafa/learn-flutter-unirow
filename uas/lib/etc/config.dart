import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uas/etc/session.dart';

class Config {
  static final String defaultFontFamily = "UbuntuMono";
  static final double defaultFontSize = 20;
  static final double defaultElevation = 20;

  static TextStyle defaultTextStyle(BuildContext context,
          {Color? color, FontWeight? weight}) =>
      TextStyle(
        color: color ?? Theme.of(context).primaryColor,
        fontSize: Config.defaultFontSize,
        fontFamily: Config.defaultFontFamily,
        fontWeight: weight ?? FontWeight.normal,
      );

  static InputDecoration defaultInputTextDecoration(BuildContext context) =>
      InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).cardColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).cardColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      );

  static AppBar defaultAppBar(BuildContext context, {String? title}) => AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          Session.getCurrentNPM(context),
          style: Config.defaultTextStyle(context, color: Colors.white),
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.settings),
            ),
          ),
        ],
      );
}
