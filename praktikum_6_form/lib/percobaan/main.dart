import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktikum_6_form/conf.dart';

void main() => runApp(
      MaterialApp(
        title: Conf.title,
        home: PercobaanForm(),
      ),
    );

class PercobaanForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PercobaanForm();
}

class _PercobaanForm extends State<PercobaanForm> {
  final _formKey = GlobalKey<FormState>();

  // default value
  double defaultSliderValue = 1;
  bool defaultCheckboxValue = false;
  bool defaultSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conf.appBar,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                createTextFormField(),
                createTextFormField(
                  label: "Password",
                  hintText: "Masukan password anda disini",
                  icon: Icons.security_outlined,
                  secure: true,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                CheckboxListTile(
                  title: Text("Belajar Dasar Flutter"),
                  subtitle: Text("Dart, Widget, Http"),
                  onChanged: (bool? value) {
                    setState(() {
                      defaultCheckboxValue = !defaultCheckboxValue;
                    });
                  },
                  value: defaultCheckboxValue,
                ),

                SwitchListTile(
                  title: Text("Backend Programming Language"),
                  subtitle: Text("Dart, Go, Java, NodeJS, PHP"),
                  value: defaultSwitchValue,
                  onChanged: (value) {
                    setState(() {
                      defaultSwitchValue = !defaultSwitchValue;
                    });
                  },
                ),

                Container(
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Skill",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Slider(
                  label: "Skill",
                  value: defaultSliderValue,
                  max: 100,
                  min: 1,
                  onChanged: (value) {
                    setState(() {
                      defaultSliderValue = value;
                    });
                  },
                ),
                // submit button
                Container(
                  margin: EdgeInsets.only(top: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () => _formKey.currentState!.validate(),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10, top: 7),
                          child: const Text("Submit"),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => _formKey.currentState!.reset(),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10, top: 7),
                        child: const Text("Reset"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createTextFormField({
    String? label,
    String? hintText,
    EdgeInsets? padding,
    IconData? icon,
    bool? secure,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: padding ?? EdgeInsets.all(10),
      child: TextFormField(
        obscureText: secure ?? false,
        decoration: InputDecoration(
          labelText: label ?? "Nama",
          hintText: hintText ?? "Misal: Irda Islakhu Afa",
          icon: Icon(icon ?? Icons.people_alt_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: validator ??
            (value) {
              if (value == null || value.trim().isEmpty) {
                return "Nilai tidak boleh kosong";
              }
              return null;
            },
      ),
    );
  }
}
