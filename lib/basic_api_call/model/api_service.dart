import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com/todos/";

  Future<http.Response> getAllUser() async {
    return await http.get(Uri.parse(baseUrl));
  }
}
