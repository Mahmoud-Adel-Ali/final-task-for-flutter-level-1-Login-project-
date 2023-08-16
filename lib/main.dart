// ignore_for_file: prefer_const_constructors

import 'package:final_project_for_flutter_level_1/pages/login.dart';
import 'package:final_project_for_flutter_level_1/pages/signup.dart';
import 'package:final_project_for_flutter_level_1/pages/wllcom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const Wellcom(),
        '/signup':(context) => const Signup(),
        '/login':(context) => const Login(),
      },
    );
  }
}