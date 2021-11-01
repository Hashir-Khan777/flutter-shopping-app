import 'package:flutter/material.dart';
import 'package:fluttershoppingapp/Controllers/login_controller.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final loginController = Get.put(LoginControler());
  var obscureText = true;
  var name = '';
  var email = '';
  var password = '';

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
                            'Register',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          margin: const EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'username',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person),
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              name = value;
                            },
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
                            onChanged: (value) {
                              email = value;
                            },
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
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                child: Icon(obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: obscureText,
                            onChanged: (value) {
                              password = value;
                            },
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            loginController.signUp(name, email, password);
                          },
                          child: const Text('Register'),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          child: Row(
                            children: [
                              const Text('Already have an account ?'),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('Login'),
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
