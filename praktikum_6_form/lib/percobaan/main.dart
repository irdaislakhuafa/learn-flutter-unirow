import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:praktikum_6_form/conf.dart';

void main() => runApp(
      MaterialApp(
        routes: {
          "/users/list": (context) => _ListUsers(),
          "/users/add": (context) => PercobaanForm(),
        },
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () => _formKey.currentState!.validate(),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10, top: 7),
                          child: const Text("Submit"),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => _formKey.currentState!.reset(),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10, top: 7),
                          child: const Text("Reset"),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, "/users/list"),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10, top: 7),
                        child: const Text("List User"),
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

class _ListUsers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListUserState();
}

class _ListUserState extends State<_ListUsers> {
  Future<dynamic> _getData(int length) async {
    var response =
        await http.get(Uri.parse("${Conf.API_BASE_URL}?per_page=$length"));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conf.appBar,
      body: Container(
        child: FutureBuilder<dynamic>(
          future: _getData(15),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(color: Colors.blue),
              );
            }

            return ListView.builder(
              itemCount: (snapshot.data['data'] as List<dynamic>).length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        snapshot.data['data'][index]['avatar'].toString()),
                  ),
                  title: Text(
                    "${snapshot.data['data'][index]['first_name'].toString()} ${snapshot.data['data'][index]['last_name'].toString()}",
                  ),
                  subtitle: Text(
                    snapshot.data['data'][index]['email'].toString(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
