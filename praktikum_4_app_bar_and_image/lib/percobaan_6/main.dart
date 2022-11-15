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
                  Colors.orange,
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B45/production/_117796291_gettyimages-962098266.jpg",
                  width: 300,
                  height: 200,
                  placeholder: (context, url) => const Text("gambar anu"),
                  errorWidget: (context, url, error) => Text("error: $error"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, left: 50, right: 50),
              child: CachedNetworkImage(
                imageUrl:
                    "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B45/production/_117796291_gettyimages-962098266.jpg",
                width: 300,
                height: 200,
                placeholder: (context, url) => const Text("gambar anu"),
                errorWidget: (context, url, error) => Text("error: $error"),
                color: Colors.blue,
                colorBlendMode: BlendMode.hue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
