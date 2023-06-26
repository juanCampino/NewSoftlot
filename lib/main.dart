import 'package:flutter/material.dart';
import 'package:softlot/routes/app_routes.dart';
import 'package:softlot/routes/route_generator.dart';

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
      initialRoute: AppRoutes.login,
      onGenerateRoute: RouteGenerator.generateRoute,
      // When navigating to the "/" route, build the FirstScreen widget.
      // '/login': (context) => const LoginPage(title: 'Softlot'),
      // // When navigating to the "/second" route, build the SecondScreen widget.
      // '/home': (context) => const HomePage(username: _userController.text),
    );
  }
}
