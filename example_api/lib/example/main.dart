import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

void main(List<String> args) {
  var headers = {
    "Content-Type": "application/json",
  };

  var data = http.get(Uri.https('jsonplaceholder.typicode.com', "/users", {}),
      headers: headers);
  var res = data.then((value) {
    return json.decode(value.body);
  });
  print((res as Map)
}
