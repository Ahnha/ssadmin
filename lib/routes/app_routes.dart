import 'package:flutter/material.dart';
import '../features/home/presentation/pages/home_page.dart';

class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> get routes => {
        home: (context) => const HomePage(),
      };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // Add custom route generation logic here if needed
    return null;
  }
}
