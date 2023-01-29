import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas/etc/config.dart';
import 'package:uas/etc/text_format.dart';
import 'package:uas/views/list_class.dart';

class ClassDetails extends StatefulWidget {
  String _classID = "";

  ClassDetails({super.key, required String classID}) {
    this._classID = classID;
  }

  @override
  State<StatefulWidget> createState() {
    var state = _ClassDetailsState();
    state.setClassID(this._classID);
    return state;
  }
}

class _ClassDetailsState extends State<ClassDetails> {
  String? _classID;
  var _tasks = [
    {
      "id": "1",
      "name": "Modul 1",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    },
    {
      "id": "2",
      "name": "Modul 2",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    },
    {
      "id": "3",
      "name": "Modul 3",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    },
  ];

  void setClassID(String classID) {
    this._classID = classID;
  }

  @override
  Widget build(BuildContext context) {
    var selectedClass = ListClass.getListClasses()
        .firstWhere((element) => element["id"] == this._classID);

    var items = [
      Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: Config.defaultElevation,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Wrap(
              children: [
                Container(
                  child: CircleAvatar(
                    child: Text(
                      selectedClass["name"]!.substring(0, 1).toUpperCase(),
                      style: Config.defaultTextStyle(context,
                          color: Colors.white, weight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    TextFormat.toSintenceCase(selectedClass["name"]!),
                    style: Config.defaultTextStyle(
                      context,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Divider(
          color: Theme.of(context).primaryColor,
          thickness: 5,
        ),
      ),
    ];

    var listTasks = List.generate(this._tasks.length, (index) {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Card(
          elevation: Config.defaultElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Container(
                  width: 1000,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: Text(
                      TextFormat.toSintenceCase(this._tasks[index]["name"]!),
                      style:
                          Config.defaultTextStyle(context, color: Colors.white),
                    ),
                  ),
                ),

                // description
                Container(
                  height: 80,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    this._tasks[index]["description"]!,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });

    items.addAll(listTasks);

    var result = Scaffold(
      appBar: Config.defaultAppBar(context),
      body: ListView(
        children: items,
      ),
    );

    return result;
  }
}
