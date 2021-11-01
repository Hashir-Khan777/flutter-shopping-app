import 'package:flutter/material.dart';
import 'package:fluttershoppingapp/Controllers/login_controller.dart';
import 'package:fluttershoppingapp/Views/home_screen.dart';
import 'package:fluttershoppingapp/Views/signup_screen.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginController = Get.put(LoginControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Shopping App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'email',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.email)),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'password',
                              border: const OutlineInputBorder(),
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: GestureDetector(
                                child: const Icon(Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(const Home());
                          },
                          child: const Text('Login'),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          child: Row(
                            children: [
                              const Text('Do not have an account ?'),
                              TextButton(
                                onPressed: () {
                                  Get.to(const SignUp());
                                },
                                child: const Text('Create account'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
