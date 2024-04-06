import 'package:flutter/material.dart';
import 'package:moo_app/screens/home/home_screen.dart';
import 'package:moo_app/screens/login/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScren()
      },
      initialRoute: 'login',
    );
  }
}
