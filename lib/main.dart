import 'package:flutter/material.dart';
import 'package:fluttershoppingapp/Views/login_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const GetMaterialApp(
      title: 'Chat App Flutter',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Login();
  }
}
