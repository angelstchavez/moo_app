import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:moo_app/screens/config/config_screen.dart';
import 'package:moo_app/screens/farm/farm_screen.dart';
import 'package:moo_app/screens/home/home_screen.dart';
import 'package:moo_app/screens/profile/profile_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}
const TextStyle _textStyle = TextStyle(

  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  fontSize: 15,
  
);

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;
    final screens =[const HomeScreen(), const FarmScreen(),const ProfileScreen(),const SettingScreen()];
    

    return Scaffold(
      
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        

        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        selectedLabelStyle: _textStyle,
        backgroundColor: Colors.green.shade800,
        items: [
          
           BottomNavigationBarItem(
            icon:  const Icon(Icons.home_outlined),
            activeIcon:  const Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green.shade100,
          ),
           BottomNavigationBarItem(
            icon:  const Icon(
              Icons.local_florist_outlined,
            ),
            activeIcon:  const Icon(Icons.local_florist_rounded),
            label: 'Granjas',
            backgroundColor: Colors.green.shade200,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person_3_outlined,
            ),
            activeIcon: const Icon(Icons.person_3_rounded),
            label: 'Perfil',
             backgroundColor: Colors.green.shade100,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings_outlined,
            ),
            activeIcon: const Icon(Icons.settings_rounded),
            label: 'Ajustes',
            backgroundColor: Colors.green.shade200,
          ),
        ],
        selectedItemColor: Colors.green.shade900, // Cambia el color del ícono y del texto del label para el item seleccionado
        unselectedItemColor: Colors.grey, // Cambia el color del ícono y del texto del label para los items no seleccionados
        showSelectedLabels:true, // Muestra los labels de los ítems seleccionados
        showUnselectedLabels:true, 
        
      ),
    );
  }
}
