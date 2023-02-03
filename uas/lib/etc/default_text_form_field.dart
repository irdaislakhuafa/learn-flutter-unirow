import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';

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
