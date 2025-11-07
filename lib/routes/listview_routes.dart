import 'package:fl_components/models/menu_options.dart';
import 'package:fl_components/screens/griffindor_screen.dart';
import 'package:fl_components/screens/hufflepuff_screen.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/ravenclaw_screen.dart';
import 'package:fl_components/screens/slitherin_screen.dart';
import 'package:flutter/material.dart';

class ListviewRoutes {
  static const String initialRoute = 'home';
  static final menuOptions = <ListView1Option>[
    ListView1Option(
      name: 'homeListView',
      route: 'home',
      icon: 'Icons.home_outlined',
      screen: const Listview1Screen(),
    ),
    ListView1Option(
      name: 'Casa Griffindor',
      route: 'Griffindor',
      icon: 'Icons.home_outlined',
      screen: const GriffindorScreen(),
    ),
    ListView1Option(
      name: 'Casa Ravenclaw',
      route: 'Ravenclaw',
      icon: 'Icons.home_outlined',
      screen: const RavenclawScreen(),
    ),
    ListView1Option(
      name: 'Casa Hufflepuff',
      route: 'Hufflepuff',
      icon: 'Icons.home_outlined',
      screen: const HufflepuffScreen(),
    ),
    ListView1Option(
      name: 'Casa Slitherin',
      route: 'Slitherin',
      icon: 'Icons.home_outlined',
      screen: const SlitherinScreen(),
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
    return MaterialPageRoute(builder: (context) => GriffindorScreen());
  }
}
