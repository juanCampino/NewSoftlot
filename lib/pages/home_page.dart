import 'package:flutter/material.dart';
import 'package:softlot/pages/home_page_args.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.arguments});
  final HomePageArguments arguments;

  @override
  Widget build(BuildContext context) {
    final String username = arguments.username;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $username'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
