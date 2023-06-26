import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softlot/pages/home_page.dart';
import 'package:softlot/pages/home_page_args.dart';
import 'package:softlot/pages/login_page.dart';
import 'package:softlot/routes/app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return buildRoute(const LoginPage(), settings: settings);
      case AppRoutes.home:
        final HomePageArguments arguments =
            settings.arguments as HomePageArguments;
        return buildRoute(HomePage(arguments: arguments), settings: settings);
      default:
        return buildRoute(const LoginPage(), settings: settings);
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
        builder: (BuildContext context) => child, settings: settings);
  }
}
