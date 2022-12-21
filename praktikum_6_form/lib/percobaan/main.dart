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
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nama",
                      hintText: "Misal: Irda Islakhu Afa",
                      icon: Icon(Icons.people_alt_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Nilai tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),

                // submit button
                ElevatedButton(
                  onPressed: () => _formKey.currentState!.validate(),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, top: 7),
                    child: const Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
