import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_2/conf.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            Conf.title,
            style: TextStyle(
              fontSize: Conf.defaultFontSize - 5,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Judul: Ini Judul ygy :v",
              style: TextStyle(
                fontSize: Conf.defaultFontSize + 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sub Judul: Ini Sub Judul ygy :v",
              style: TextStyle(
                fontSize: Conf.defaultFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Deskripsi 1 : Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak.",
              style: TextStyle(
                fontSize: Conf.defaultFontSize - 10,
              ),
            ),
            Text(
              "Deskripsi 2 : Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak.",
              style: TextStyle(
                fontSize: Conf.defaultFontSize - 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
