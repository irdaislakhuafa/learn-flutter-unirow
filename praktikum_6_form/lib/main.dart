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

  var isMale = true;

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
      child: input(labelText: "  NPM"),
    );

    var name = Container(
      child: input(
        labelText: "  Name",
        icon: Icons.perm_identity_outlined,
      ),
    );

    var gender = Container(
      child: cardWithShadow(
        margin: EdgeInsets.all(0),
        child: SwitchListTile(
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Male",
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ),
          value: isMale,
          onChanged: (value) => setState(() {
            isMale = value;
          }),
          secondary: const Icon(
            Icons.male_outlined,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );

    var address = Container(
      child: input(
        maxLines: 3,
        labelText: "Address",
        icon: Icons.location_history,
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
                name,
                gender,
                address,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget input({
    EdgeInsets? margin,
    String? labelText,
    TextStyle? style,
    IconData? icon,
    int? maxLines,
  }) {
    return cardWithShadow(
      margin:
          margin ?? EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 10),
      child: TextFormField(
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          label: Text(
            labelText ?? "NPM",
            style: TextStyle(
              color: Colors.blueAccent,
            ),
          ),
          icon: Icon(icon ?? Icons.numbers_outlined, color: Colors.blueAccent),
          border: UnderlineInputBorder(),
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
