import 'package:flutter/material.dart';

class LoginButtom extends StatelessWidget {
  const LoginButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print('Cadastrar usuario');
                },
                child: const Text(
                  "Cadastre-se",
                  style: TextStyle(
                    color: Color(0xFFEFEFEB),
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  print('Nova senha');
                },
                child: const Text(
                  "Esqueci minha senha",
                  style: TextStyle(
                    color: Color(0xFFEFEFEB),
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
