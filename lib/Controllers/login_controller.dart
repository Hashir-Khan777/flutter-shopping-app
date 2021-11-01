import 'package:fluttershoppingapp/Views/home_screen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginControler extends GetxController {
  void login(email, password) async {
    var url = Uri.parse('http://192.168.0.130:8080/api/users/login');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var response =
        await http.post(url, body: {'email': email, 'password': password});
    await prefs.setString('user', response.body);
    Get.to(const Home());
  }

  void signUp(name, email, password) async {
    var url = Uri.parse('http://192.168.0.130:8080/api/users/register');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.post(url, body: {
      'name': name,
      'email': email,
      'password': password,
    }, headers: {
      'Access-Control-Allow-Origin': '*'
    });
    await prefs.setString('user', response.body);
    Get.to(const Home());
  }
}
