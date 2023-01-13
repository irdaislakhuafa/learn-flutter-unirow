import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:praktikum_7_http/conf.dart';

void main() => runApp(
      MaterialApp(
        home: LearnGetData(),
      ),
    );

class LearnGetData extends StatelessWidget {
  Future<dynamic> _getData(int length) async {
    var response =
        await http.get(Uri.parse("${Conf.API_BASE_URL}?per_page=$length"));
    print(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Conf.DEFAULT_BAR,
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
