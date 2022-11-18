import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_4_app_bar_and_image/conf.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(Conf.title),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.green,
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Image.asset("assets/images/robot.png"),
              ),
            ),
            const Text(
              "Irda Islakhu Afa | From Assets",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 50, left: 50, right: 50, bottom: 20),
              child: const Image(
                image: CachedNetworkImageProvider(
                  "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B45/production/_117796291_gettyimages-962098266.jpg",
                ),
              ),
            ),
            const Center(
              child: Text(
                "From CachedNetworkImage",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
