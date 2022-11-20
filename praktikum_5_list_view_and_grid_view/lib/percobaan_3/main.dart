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
        body: ListView.separated(
          itemBuilder: (ctx, index) {
            if (index <= 0) {
              return months[index] as Card;
            }
            return Card(
              elevation: 50,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(months[index].toString()[0]),
                ),
                title: Container(
                  child: Text(
                    months[index].toString(),
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              child: const Text(
                "=== this is separator ===",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
          itemCount: months.length,
        ),
      ),
    );
  }
}
