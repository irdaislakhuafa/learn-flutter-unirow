import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/main.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_5/conf.dart';

class Modul5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [App.labelPercobaan()];
    for (int i = 1; i <= 5; i++) {
      items.add(
        App.createButtonModul(
          "${i}",
          action: () => Navigator.pushNamed(context, "/modul/5/percobaan/${i}"),
          margin_1: EdgeInsets.all(0),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Modul 5"),
        centerTitle: true,
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}

class Modul5Percobaan1 extends StatelessWidget {
  static String repeat({int? value, String? text}) {
    String result = text ?? "";
    for (int i = 0; i < (value ?? 0); i++) {
      result += result;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Conf.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Card(
            elevation: 50,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Flutter Widget: Penggunaan ListView Class",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(15),
            elevation: 50,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Text(
                repeat(text: Conf.dummyText, value: 3),
                style: const TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Modul5Percobaan2 extends StatelessWidget {
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
    return Scaffold(
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
    );
  }
}

class Modul5Percobaan3 extends StatelessWidget {
  const Modul5Percobaan3({super.key});
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
    return Scaffold(
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
    );
  }
}

class Modul5Percobaan4 extends StatelessWidget {
  const Modul5Percobaan4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conf.defaultAppBar,
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          9,
          (index) {
            if (((index + 1) % 2) == 0) {
              return const FlutterLogo();
            }
            return Card(
              margin: const EdgeInsets.all(10),
              elevation: 50,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Text(
                  "Element ${index + 1}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Modul5Percobaan5 extends StatelessWidget {
  const Modul5Percobaan5({super.key});
  static final List<String> character =
      "abcdefghijklmnopqrstuvwxyz".toUpperCase().split("");

  @override
  Widget build(BuildContext context) {
    List<Widget> listView = [
      Container(
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          crossAxisCount: 3,
          children: List.generate(
            character.length,
            (index) {
              return Card(
                elevation: 50,
                margin: const EdgeInsets.all(20),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    character[index],
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ];
    listView.add(
      const Card(
        elevation: 80,
        margin: EdgeInsets.all(80),
        child: FlutterLogo(),
      ),
    );

    listView.addAll(
      Iterable.generate(
        5,
        (index) => const Card(
          elevation: 80,
          margin: EdgeInsets.all(80),
          child: FlutterLogo(),
        ),
      ),
    );

// TODO: fix scroll here
    return Scaffold(
      appBar: Conf.defaultAppBar,
      body: GridView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        children: listView,
      ),
    );
  }
}
