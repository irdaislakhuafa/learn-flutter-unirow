import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/etc/default_button.dart';

class RegisterStatus extends StatefulWidget {
  RegisterStatusOptions status;

  RegisterStatus({super.key, required this.status});

  @override
  State<StatefulWidget> createState() {
    var state = _RegisterStatusState();
    state._status = status;
    return state;
  }
}

enum RegisterStatusOptions { SUCCESS, FAILED }

class _RegisterStatusState extends State<RegisterStatus> {
  RegisterStatusOptions? _status;

  @override
  Widget build(BuildContext context) {
    var value = {};

    switch (this._status) {
      case RegisterStatusOptions.SUCCESS:
        value = {
          "image": "assets/images/register_success.png",
          "text": "Daftar Berhasil",
        };
        break;
      case RegisterStatusOptions.FAILED:
        value = {
          "image": "assets/images/register_failed.png",
          "text": "Akun Sudah Ada",
        };
        break;
      default:
    }

    var result = Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 130),
              height: 250,
              child: Image.asset(value["image"]),
            ),
          ),
          Center(
            child: Wrap(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    value["text"],
                    style: Config.defaultTextStyle(
                      context,
                      weight: FontWeight.bold,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DefaultButton(
              text: "Masuk",
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
            DefaultButton(
              text: "Batal",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );

    return result;
  }
}
