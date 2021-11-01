import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginControler extends GetxController {
  void login(email, password) async {
    var url = Uri.parse('http://localhost:8080/api/users/login');
    var response =
        await http.post(url, body: {'email': email, 'password': password});
    print(response);
  }

  void signUp(name, email, password) async {
    var url = Uri.parse('http://localhost:8080/api/users/register');
    final response = await http
        .post(url, body: {'name': name, 'email': email, 'password': password});
    print(response);
  }
}
