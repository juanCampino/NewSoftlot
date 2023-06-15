import 'package:flutter/material.dart';
import 'package:softlot/widgets/loginForm.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = '';

  void _clearFields() {}

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0, 1.3),
              colors: <Color>[
                Color.fromRGBO(0, 70, 145, 1),
                Color.fromRGBO(27, 90, 131, 1),
                Color.fromRGBO(174, 195, 40, 1),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Image(
                  image: AssetImage('assets/logo.png'),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(29, 69, 111, 1),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const LoginForm(),
                )
              ],
            ),
          )),
    );
  }
}
