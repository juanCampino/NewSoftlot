import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _userController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          FormField(labelText: "Username", controller: _userController),
          const SizedBox(height: 16.0),
          FormField(
            labelText: "Password",
            controller: _passwordController,
            obscureText: true,
          ),
          const SizedBox(height: 24.0),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FormButton(
                    onPressed: () {
                      print(_userController.text);
                      print(_passwordController.text);
                    },
                    buttonText: 'Login'),
                FormButton(
                    onPressed: () {
                      _userController.clear();
                      _passwordController.clear();
                    },
                    buttonText: 'Clear'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FormButton extends StatelessWidget {
  const FormButton(
      {super.key, required this.onPressed, required this.buttonText});
  final Function() onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(130, 40),
      ),
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}

class FormField extends StatelessWidget {
  const FormField({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
  });
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorHeight: 24.0, // Ajusta el valor según tus necesidades
      cursorRadius:
          const Radius.circular(2.0), // Ajusta el valor según tus necesidades
      cursorOpacityAnimates: true,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        floatingLabelStyle:
            Theme.of(context).inputDecorationTheme.floatingLabelStyle,
        fillColor: Theme.of(context).inputDecorationTheme.fillColor,
        contentPadding: const EdgeInsets.only(top: 2, bottom: 2),
      ),
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
    );
  }
}
