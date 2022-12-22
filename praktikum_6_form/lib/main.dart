import 'package:flutter/material.dart';
import 'package:praktikum_6_form/conf.dart';

void main() => runApp(
      MaterialApp(
        title: Conf.title,
        home: App(),
      ),
    );

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _App();
}

class _App extends State<App> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var title = Container(
      margin: EdgeInsets.only(top: 20),
      child: Align(
        child: const Text(
          "Form Input Biodata",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );

    var npm = Container(
      child: cardWithShadow(
        margin: EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 10),
        child: TextFormField(
          decoration: InputDecoration(
            label: Text(
              "NPM",
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
            icon: Icon(Icons.numbers_outlined),
            border: UnderlineInputBorder(),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: Conf.appBar,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                title,
                const Divider(),
                npm,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardWithShadow({Widget? child, EdgeInsets? margin}) {
    return Card(
      elevation: 5,
      child: Container(
        margin: margin ??
            const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
        child: child ??
            Text(
              "Hello World",
            ),
      ),
    );
  }
}
