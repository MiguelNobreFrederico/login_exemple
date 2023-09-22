import 'package:flutter/material.dart';
import 'package:login_exemple/components/Login_image.dart';
import 'package:login_exemple/components/login_buttom.dart';
import 'package:login_exemple/components/login_form.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({super.key});

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Color(0xFFE9BCB9)),
          ),
          Column(
            children: const [
              LoginImage(),
              LoginForm(),
              LoginButtom(),
            ],
          ),
        ],
      ),
    );
  }
}
