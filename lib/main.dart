import 'package:flutter/material.dart';
import 'package:moo_app/utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moo App',
      routes: Routes.routes,
      initialRoute: 'login',
    );
  }
}
