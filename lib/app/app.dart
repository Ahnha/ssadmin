import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../features/home/presentation/controllers/home_controller.dart';
import '../features/home/presentation/pages/home_page.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeController(),
      child: MaterialApp(
        title: 'Namer App',
        theme: AppTheme.lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
