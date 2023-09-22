import 'package:flutter/material.dart';
import 'package:login_exemple/screens/login_home.dart';
import 'package:login_exemple/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Exemple',
      theme: MyTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginHome(),
    );
  }
}
