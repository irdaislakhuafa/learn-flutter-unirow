import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/etc/text_format.dart';
import 'package:uas/views/class_details.dart';

class ListClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    var state = _ListClass();

    return state;
  }
}

class _ListClass extends State<ListClass> {
  List<Map<String, String>> _classes = [
    {
      "id": "1",
      "name": "praktikum java",
    },
    {
      "id": "2",
      "name": "matematika",
    },
    {
      "id": "3",
      "name": "b. indonesia",
    },
    {
      "id": "4",
      "name": "biologi",
    },
    {
      "id": "5",
      "name": "sistem operasi",
    }
  ];

  @override
  Widget build(BuildContext context) {
    var items = [
      Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Card(
          elevation: Config.defaultElevation,
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(25),
              child: Text(
                "Daftar Kelas",
                style: Config.defaultTextStyle(
                  context,
                  color: Colors.white,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ];

    var listClasses = List.generate(this._classes.length, (index) {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: GestureDetector(
          onTap: () {
            var classDetails =
                ClassDetails(classID: this._classes[index]["id"]!);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => classDetails,
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Wrap(
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Text(
                        this
                            ._classes[index]["name"]!
                            .substring(0, 1)
                            .toUpperCase(),
                        style: Config.defaultTextStyle(context,
                            color: Colors.white, weight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      TextFormat.toSintenceCase(
                          this._classes[index]["name"] ?? "tidak ada"),
                      style: Config.defaultTextStyle(context),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });

    items.addAll(listClasses);

    return Scaffold(
      appBar: Config.defaultAppBar(context),
      body: ListView(
        children: items,
      ),
    );
  }
}
