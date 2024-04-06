import 'package:flutter/material.dart';
import 'package:moo_app/widgets/button_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bandeja principal',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green.shade800,
      ),
      body: const Center(
        child: Text('Contenido de la página'),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
