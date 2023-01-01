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

  var _isMale = true;
  var _checkBoxCoding = false;
  var _checkBoxSleep = false;
  var _checkBoxEat = false;
  var _checkBoxOthers = false;

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
      child: input(
        labelText: "   NPM",
        keyType: TextInputType.number,
        validator: (v) {
          if (v == null || v.isEmpty) {
            return "NPM cannot be null";
          }
          return null;
        },
      ),
    );

    var name = Container(
      child: input(
        labelText: "   Name",
        icon: Icons.perm_identity_outlined,
        validator: (v) {
          if (v == null || v.isEmpty) {
            return "Name cannot be null";
          }
          return null;
        },
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
          value: _isMale,
          onChanged: (value) => setState(() {
            _isMale = value;
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
        labelText: "   Address",
        icon: Icons.location_history,
        validator: (v) {
          if (v == null || v.isEmpty) {
            return "Address cannot be null";
          }
          return null;
        },
      ),
    );

    var hobbies = Container(
      alignment: Alignment.centerLeft,
      child: cardWithShadow(
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.local_activity_outlined,
                  color: Colors.blueAccent,
                ),
                Text(
                  "       Hobbies",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("Coding"),
                    value: _checkBoxCoding,
                    onChanged: (v) => setState(
                      () {
                        _checkBoxCoding = v ?? false;
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("Sleep"),
                    value: _checkBoxSleep,
                    onChanged: (v) =>
                        setState(() => _checkBoxSleep = v ?? false),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("Eat"),
                    value: _checkBoxEat,
                    onChanged: (v) => setState(() => _checkBoxEat = v ?? false),
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text("Others"),
                    value: _checkBoxOthers,
                    onChanged: (v) =>
                        setState(() => _checkBoxOthers = v ?? false),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

    var buttons = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () => _formKey.currentState!.validate(),
              child: const Text("Save"),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blueAccent)),
            ),
          ),
          TextButton(
            onPressed: () => _formKey.currentState!.reset(),
            child: const Text("Reset"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
          ),
        ],
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
                hobbies,
                buttons,
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
    TextInputType? keyType,
    String? Function(String?)? validator,
  }) {
    return cardWithShadow(
      margin:
          margin ?? EdgeInsets.only(left: 20, right: 20, top: 1, bottom: 10),
      child: TextFormField(
        validator: validator ??
            (v) => v == null || v.isEmpty ? "Cannot be null" : null,
        keyboardType: keyType ?? TextInputType.text,
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
