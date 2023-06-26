import 'package:flutter/material.dart';
import 'package:softlot/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = '';

  @override
  Widget build(BuildContext context) {
    return Container(
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
      )),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Image(
              image: AssetImage('assets/logo.png'),
            ),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
