import 'package:flutter/material.dart';

import 'screens/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOFTLOT',
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
      home: const LoginPage(title: 'Softlot'),
    );
  }
}
