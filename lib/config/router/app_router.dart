import 'package:flutter/material.dart';
import 'package:internship_tasks_06/config/constants/route_const.dart';
import 'package:internship_tasks_06/screens/01_splash_screen/splash_screen.dart';
import 'package:internship_tasks_06/screens/02_on_boarding_screen/on_boarding_screen.dart';
import 'package:internship_tasks_06/screens/03_login_screen/login_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return _pageBuilder(
          page: const SplashScreen(),
        );
      case onBoardingScreen:
        return _pageBuilder(
          page: const OnBardingScreen(),
        );

      case loginScreen:
        return _pageBuilder(
          page: const LoginScreen(),
        );

      default:
        splashScreen;
    }
    return null;
  }

  static MaterialPageRoute _pageBuilder({
    required Widget page,
  }) {
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
