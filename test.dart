import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  var response =  await http.get(Uri.http("localhost:3333", "/api/events"));
  print(jsonDecode(response.body));
}
