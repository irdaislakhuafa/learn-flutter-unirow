import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';

class ListClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    var state = _ListClass();

    return state;
  }
}

class _ListClass extends State<ListClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Config.defaultAppBar(context),
    );
  }
}
