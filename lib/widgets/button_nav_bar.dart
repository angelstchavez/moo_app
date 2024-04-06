import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Aquí puedes agregar lógica adicional según el índice seleccionado
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor:
          Colors.grey, // Color gris para los íconos no seleccionados
      selectedItemColor:
          Colors.green.shade900, // Color verde para el ícono seleccionado
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_florist),
          label: 'Granjas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Ajustes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedLabelStyle: TextStyle(
          color: Colors
              .green.shade900), // Estilo de texto para etiquetas seleccionadas
      unselectedLabelStyle: const TextStyle(
          color:
              Colors.grey), // Estilo de texto para etiquetas no seleccionadas
    );
  }
}
