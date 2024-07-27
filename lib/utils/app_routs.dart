import 'package:day_task/views/login_screen.dart';
import 'package:day_task/views/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouts {
  static const String splashRout = '/';
  static const String loginRout = '/login';

  static Route<dynamic> generateRouts(RouteSettings settings) {
    switch (settings.name) {
      case AppRouts.loginRout:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRouts.splashRout:
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
