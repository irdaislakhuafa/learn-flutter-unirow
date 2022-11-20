import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_5_list_view_and_grid_view/conf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final List<Object> months = [
    Card(
      margin: const EdgeInsets.all(5),
      elevation: 50,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: const Text(
          "List Months",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Conf.title,
      home: Scaffold(
        appBar: Conf.defaultAppBar,
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: months.length,
          itemBuilder: (context, index) {
            if (index <= 0) {
              return months[index] as Card;
            }
            return Card(
              margin: const EdgeInsets.all(5),
              elevation: 20,
              shadowColor: Colors.blueAccent,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(months[index].toString()[0]),
                ),
                title: Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    months[index].toString(),
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
