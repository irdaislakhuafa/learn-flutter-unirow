import 'package:flutter/material.dart';

import 'config.dart';

class DefaultButton extends StatelessWidget {
  String? text;
  EdgeInsetsGeometry? firstMargin, insideButtonPadding;
  Color? backgroundColor;
  MaterialStateProperty<OutlinedBorder?>? shape;
  void Function()? onPressed;

  DefaultButton(
      {super.key,
      this.text,
      this.firstMargin,
      this.insideButtonPadding,
      this.shape,
      this.onPressed,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.firstMargin ?? EdgeInsets.all(0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              this.backgroundColor ?? Theme.of(context).primaryColor),
          shape: this.shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
        ),
        child: Container(
          padding: EdgeInsets.all(13),
          child: Text(
            this.text ?? "Masuk",
            style: Config.defaultTextStyle(
              context,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        onPressed: this.onPressed ?? () {},
      ),
    );
  }
}
