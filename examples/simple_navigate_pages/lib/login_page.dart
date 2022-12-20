import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_navigate_pages/main.dart';

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
                  scale: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 5),
                  child: const Text(
                    "UNIROW",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: DefaultFontFamily,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.only(),
                  child: const Text(
                    "Universitas PGRI Ronggolawe",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: DefaultFontFamily,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
