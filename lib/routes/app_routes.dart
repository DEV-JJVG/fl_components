import 'package:fl_components/listview_main.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      name: 'Home',
      route: 'home',
      icon: Icons.home_max_outlined,
      screen: const HomeScreen(),
    ),
    MenuOption(
      name: 'ListView Tipo 1',
      route: 'listview1',
      icon: Icons.home_max_outlined,
      screen: const MyListView(),
    ),
    MenuOption(
      name: 'ListView Tipo 2',
      route: 'listview2',
      icon: Icons.home_max_outlined,
      screen: const Listview2Screen(),
    ),
    MenuOption(
      name: 'Alertas - Alerts',
      route: 'alert',
      icon: Icons.home_max_outlined,
      screen: const AlertScreen(),
    ),
    MenuOption(
      name: 'Tarjetas - Cards',
      route: 'card',
      icon: Icons.home_max_outlined,
      screen: const CardScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => AlertScreen());
  }
}
