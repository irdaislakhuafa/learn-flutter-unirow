import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum_4_app_bar_and_image/conf.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          titleSpacing: 100,
          title: Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png",
          ),
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.person,
                color: Colors.blueAccent,
              ),
              tooltip: "Profile",
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.settings,
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
