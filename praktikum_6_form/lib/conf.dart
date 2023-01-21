import 'package:flutter/material.dart';

class Conf {
  static String title = "Irda Islakhu Afa | 1412190011";
  static final AppBar appBar = AppBar(
    title: Text(Conf.title),
    centerTitle: true,
  );
  static final String API_BASE_URL = "https://reqres.in/api/users";
}
