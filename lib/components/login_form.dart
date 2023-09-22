import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController loginControlller = TextEditingController();
  TextEditingController passwordControlller = TextEditingController();

  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 80,
              child: TextFormField(
                validator: (String? value) {
                  if (value != null && value.isEmpty) {
                    return 'Ensira seu E-mail';
                  }
                  return null;
                },
                controller: loginControlller,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFFEFEFEB),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFFEFEFEB),
                    ),
                  ),
                  hintText: 'Login',
                  errorStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                validator: (value) {
                  if (value!.length < 6 || value.isEmpty) {
                    return 'Ensira uma senha de 6 digitos';
                  }
                  return null;
                },
                controller: passwordControlller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFFEFEFEB),
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xFFEFEFEB),
                    ),
                  ),
                  suffix: GestureDetector(
                    child: Icon(
                      showPassword == false
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.white,
                    ),
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                  fillColor: Colors.white70,
                  hintText: "Password...",
                  errorStyle: const TextStyle(color: Colors.white),
                  hintStyle: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),
                ),
                obscureText: showPassword == false ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  print(loginControlller.text);
                  print(int.parse(passwordControlller.text));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Login com sucesso!'),
                    ),
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 30,
                  width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFEFEB),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xFFEFEFEB),
                    ),
                  ),
                  child: const Text(
                    "Lets,go",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      color: Color(0xFFF5A39F),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
