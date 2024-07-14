import 'package:flutter/material.dart';
import 'package:project_app/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: 'home',
      routes: {
        'home': (context) => const LoginPage(),
      },
    );
  }
}
