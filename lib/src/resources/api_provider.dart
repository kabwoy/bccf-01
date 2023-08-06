import 'package:http/http.dart' show Client;

class ApiProvider {
  final client = Client();
  fetchTodos() async {
    final response = await client.get(Uri.http("localhost:3000"));
  }
}
