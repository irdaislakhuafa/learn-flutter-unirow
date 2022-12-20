import 'package:flutter/cupertino.dart';
import 'package:unirow_app/modul_1_and_5/main.dart';
import 'package:flutter/material.dart';
import 'package:unirow_app/modul_1_and_5/modul/modul_3/conf.dart';

class Modul3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [App.labelPercobaan()];
    for (int i = 1; i <= 6; i++) {
      items.add(
        App.createButtonModul(
          "${i}",
          action: () => Navigator.pushNamed(context, "/modul/3/percobaan/${i}"),
          margin_1: EdgeInsets.all(0),
        ),
      );
    }

    items.add(
      App.createButtonModul(
        "Tugas",
        margin_1: EdgeInsets.all(0),
        action: () => Navigator.pushNamed(context, "/modul/3/task"),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Modul 3"),
        centerTitle: true,
      ),
      body: ListView(
        children: items,
      ),
    );
  }
}

class Modul3Percobaan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan 1"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: const Text(
          "Let's learn flutter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Modul3Percobaan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan 2"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueAccent,
        child: const Text(
          "Lets learn flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class Modul3Percobaan3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan 3"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        color: Colors.blueAccent,
        width: 200,
        height: 200,
        child: const Text(
          "This is a text",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Modul3Percobaan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan 4"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20),
        color: Colors.blueAccent,
        width: 200,
        height: 200,
        child: Text(
          "This is a text",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Modul3Percobaan5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Percobaan 5"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          transform: Matrix4.rotationZ(0.2),
          height: 200,
          width: 200,
          child: Text(
            "This is text",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class Modul3Percobaan6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Config.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                "https://unirow.ac.id/wp-content/uploads/2022/03/unirow.png",
              ),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.lightBlue,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class Modul3Task extends StatelessWidget {
  const Modul3Task({super.key});

  Container createContainer({String? text}) {
    return Container(
      width: 250,
      height: 250,
      alignment: Alignment.center,
      color: Colors.blueAccent,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      child: Text(
        text ?? "1412190011 | Irda Islakhu Afa | 2019 B",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            createContainer(),
            createContainer(),
          ],
        ),
      ),
    );
  }
}
