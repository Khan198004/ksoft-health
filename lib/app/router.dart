import 'package:flutter/material.dart';

import '../features/dashboard/dashboard_screen.dart';

class AppRouter {
  AppRouter._();

  static const String dashboard = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case dashboard:
        return MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}