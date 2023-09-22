import 'package:flutter/material.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 39),
      child: SizedBox(
        height: 100,
        width: 200,
        child: Image.asset("assets/logo.png"),
      ),
    );
  }
}
