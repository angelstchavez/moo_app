import 'package:flutter/material.dart';

class FarmScreen extends StatelessWidget {
  const FarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Granjas'),
      ),
      body: const Center(
        child: Text('Contenido del Granjas'),
      ),
    );
  }
}