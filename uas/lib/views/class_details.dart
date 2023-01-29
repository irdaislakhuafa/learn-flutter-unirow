import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';

class ClassDetails extends StatefulWidget {
  String _classID = "";

  ClassDetails({super.key, required String classID}) {
    this._classID = classID;
  }

  @override
  State<StatefulWidget> createState() {
    var state = _ClassDetailsState();
    state.setClassID(this._classID);
    return state;
  }
}

class _ClassDetailsState extends State<ClassDetails> {
  String? _classID;

  void setClassID(String classID) {
    this._classID = classID;
  }

  @override
  Widget build(BuildContext context) {
    var result = Scaffold(
      appBar: Config.defaultAppBar(context),
    );

    return result;
  }
}
