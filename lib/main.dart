import 'package:flutter/material.dart';
import 'package:moo_app/screens/home/home_screen.dart';
import 'package:moo_app/screens/login/login_screen.dart';
import 'package:moo_app/screens/register/register_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moo App',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen(),
        'register': (_) => const RegisterScreen()
      },
      initialRoute: 'login',
    );
  }
}
