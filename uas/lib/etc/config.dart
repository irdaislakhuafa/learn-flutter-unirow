import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Config {
  static final String defaultFontFamily = "UbuntuMono";
  static final double defaultFontSize = 20;

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
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      );
}
