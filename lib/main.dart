import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roomtasks/Pages/login_page.dart';

import 'Pages/home_page.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home:  SafeArea(
          child: LoginPage()),
    );
  }
}

