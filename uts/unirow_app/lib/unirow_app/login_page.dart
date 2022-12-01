import 'package:flutter/material.dart';
import 'package:unirow_app/unirow_app/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      // logo
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
                  fontSize: 20,
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
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontFamily: DefaultFontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      // npm/nim
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 60),
        child: Container(
          margin: const EdgeInsets.only(top: 40, bottom: 5),
          child: const Text(
            "NIM/NPM",
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: DefaultFontFamily,
              fontSize: 20,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 60),
        child: TextFormField(
          style: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          cursorColor: Colors.blueAccent,
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ),
      // password
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 60),
        child: Container(
          margin: const EdgeInsets.only(top: 30, bottom: 5),
          child: const Text(
            "Kata Sandi",
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: DefaultFontFamily,
              fontSize: 20,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 60),
        child: TextFormField(
          obscureText: true,
          obscuringCharacter: "*",
          style: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          cursorColor: Colors.blueAccent,
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 3),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ),

      Container(
        margin: const EdgeInsets.symmetric(horizontal: 150),
        child: Container(
          margin: EdgeInsets.only(top: 150),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: const Text(
                "Masuk",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: DefaultFontFamily,
                  fontSize: 20,
                ),
              ),
            ),
            onPressed: () {},
          ),
        ),
      )
    ];

    return Scaffold(
      body: ListView(
        children: items,
      ),
    );
  }
}
