import 'package:flutter/material.dart';
import '../views/auths/login_screen.dart';
import '../views/intro_screens/intro_screen.dart';
import '../views/pages/home_page.dart';

class AppRoutes {
  static const String intro = '/';
  static const String login = '/login';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case intro:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
    }
  }
}
