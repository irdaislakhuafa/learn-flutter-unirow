import 'package:flutter/material.dart';
import 'package:praktikum_4_app_bar_and_image/conf.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.code),
          centerTitle: true,
          title: Text(Conf.title),
          backgroundColor: Colors.black,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
