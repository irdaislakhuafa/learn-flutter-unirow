import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/unirow_logo.png",
                  scale: 4,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text("UNIROW"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
