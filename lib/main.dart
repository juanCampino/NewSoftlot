import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soflot',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          floatingLabelStyle: TextStyle(color: Colors.blue),
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(top: 2, bottom: 2),
        ),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.blue),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Softlot'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              const Image(
                image: AssetImage('lib/assets/logo.png'),
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
          )),
    );
  }
}

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
          TextField(
            controller: _userController,
            style: const TextStyle(color: Colors.white),
            cursorHeight: 24.0, // Ajusta el valor según tus necesidades
            cursorRadius: const Radius.circular(
                2.0), // Ajusta el valor según tus necesidades
            cursorOpacityAnimates: true,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              enabledBorder:
                  Theme.of(context).inputDecorationTheme.enabledBorder,
              focusedBorder:
                  Theme.of(context).inputDecorationTheme.focusedBorder,
              floatingLabelStyle:
                  Theme.of(context).inputDecorationTheme.floatingLabelStyle,
              fillColor: Theme.of(context).inputDecorationTheme.fillColor,
              contentPadding: const EdgeInsets.only(top: 2, bottom: 2),
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: _passwordController,
            cursorHeight: 24.0, // Ajusta el valor según tus necesidades
            cursorRadius: const Radius.circular(
                2.0), // Ajusta el valor según tus necesidades
            cursorOpacityAnimates: true,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              enabledBorder:
                  Theme.of(context).inputDecorationTheme.enabledBorder,
              focusedBorder:
                  Theme.of(context).inputDecorationTheme.focusedBorder,
              floatingLabelStyle:
                  Theme.of(context).inputDecorationTheme.floatingLabelStyle,
              fillColor: Theme.of(context).inputDecorationTheme.fillColor,
              contentPadding: const EdgeInsets.only(top: 2, bottom: 2),
            ),
            style: const TextStyle(color: Colors.white),
            obscureText: true,
          ),
          const SizedBox(height: 24.0),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 40),
                  ),
                  onPressed: () {
                    print(_userController.text);
                    print(_passwordController.text);
                  },
                  child: const Text('Login'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 40),
                  ),
                  onPressed: () {
                    _userController.clear();
                    _passwordController.clear();
                  },
                  child: const Text('Clear'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
