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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(0, 69, 145, 1)),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0, 1.5),
              colors: <Color>[
                Color.fromRGBO(0, 70, 145, 1),
                Color.fromRGBO(27, 90, 131, 1),
                Color.fromRGBO(193, 215, 44, 1),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Image(
                image: AssetImage('lib/assets/logo.png'),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                width: 600,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(29, 69, 111, 1),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: LoginForm(),
              )
            ],
          )),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .white), // Cambia el color de la línea cuando el TextField no tiene el foco
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .blue), // Cambia el color de la línea cuando el TextField tiene el foco
                ),
                floatingLabelStyle: TextStyle(color: Colors.blue),
                fillColor: Colors.white),
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .white), // Cambia el color de la línea cuando el TextField no tiene el foco
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .blue), // Cambia el color de la línea cuando el TextField tiene el foco
                ),
                floatingLabelStyle: TextStyle(color: Colors.blue),
                fillColor: Colors.white),
            style: TextStyle(color: Colors.white),
            obscureText: true,
          ),
          const SizedBox(height: 24.0),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('Clear'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}