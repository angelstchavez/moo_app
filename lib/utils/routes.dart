import 'package:flutter/material.dart';
import 'package:moo_app/screens/config/config_screen.dart';
import 'package:moo_app/screens/dashboard/dashboard_screen.dart';
import 'package:moo_app/screens/farm/farm_screen.dart';
import 'package:moo_app/screens/login/login_screen.dart';
import 'package:moo_app/screens/profile/profile_screen.dart';
import 'package:moo_app/screens/register/register_screen.dart';
import 'package:moo_app/widgets/button_nav_bar.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    'login': (_) => const LoginScreen(),
    'home': (_) => const BottomNavBarWidget(),
    'register': (_) => const RegisterScreen(),
    'dashboard': (_) => const DashboardScreen(),
    'config': (_) => const SettingScreen(),
    'profile': (_) => const ProfileScreen(),
    'farms': (_) => const FarmScreen(),
  };
}
