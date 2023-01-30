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
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _npm = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    final user = Session.getCurrentUser(context);

    var items = [
      // avatar
      Container(
        height: 130,
        margin: EdgeInsets.only(bottom: 50, top: 50),
        child: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Container(
            child: Text(
              user.name.substring(0, 1).toUpperCase(),
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
      DefaultTextFormField(
        initialValue: user.name,
        icon: Image.asset("assets/images/person.png"),
        iconHeight: 30.0,
      ),

      // npm
      DefaultTextFormField(
        initialValue: user.npm,
        icon: Image.asset("assets/images/card.png"),
        iconHeight: 30.0,
      ),

      // password
      DefaultTextFormField(
        icon: Image.asset("assets/images/lock.png"),
        initialValue: user.password,
        secured: true,
        iconHeight: 30.0,
      ),
    ];

    return Scaffold(
      body: Form(
        key: this._formKey,
        child: Container(
          child: ListView(
            children: items,
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // save
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {
                // TODO: save here
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Simpan",
                  style: Config.defaultTextStyle(context, color: Colors.white),
                ),
              ),
            ),
          ),

          // cancel
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Batal",
                  style: Config.defaultTextStyle(context, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultTextFormField extends StatelessWidget {
  EdgeInsetsGeometry? firstMargin;
  String? initialValue, hintText;
  Widget? icon;
  bool? secured;
  void Function(String)? onChange;
  String? Function(String?)? validator;
  double? iconHeight;

  DefaultTextFormField(
      {super.key,
      this.firstMargin,
      this.initialValue,
      this.hintText,
      this.icon,
      this.secured,
      this.onChange,
      this.validator,
      this.iconHeight});

  @override
  Widget build(BuildContext context) {
    List<Widget> inputChild = [
      Container(
        width: MediaQuery.of(context).size.width - 120,
        margin: this.firstMargin ?? EdgeInsets.only(top: 2, left: 5),
        child: TextFormField(
          initialValue: this.initialValue,
          style: Config.defaultTextStyle(context),
          obscureText: this.secured ?? false,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            icon: Container(
              height: this.iconHeight ?? 30,
              margin: EdgeInsets.only(left: 5),
              child: this.icon ?? Image.asset("assets/images/person.png"),
            ),
            border: InputBorder.none,
            hintText: this.hintText,
            hintStyle: Config.defaultTextStyle(context),
          ),
          onChanged: this.onChange ??
              (value) {
                // TODO: add validation here
              },
          validator: this.validator ??
              (value) {
                // TODO: add validation
              },
        ),
      ),
    ];

    if (this.secured ?? false) {
      inputChild.add(
        // TODO: add button to show password field
        GestureDetector(
          child: Container(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.remove_red_eye,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          onTap: () {
            // TODO: show password field
          },
        ),
      );
    }

    var input = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: inputChild,
    );

    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 10,
        child: Container(
          child: input,
        ),
      ),
    );
  }
}
