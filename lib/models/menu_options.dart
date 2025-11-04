import 'package:flutter/widgets.dart';

class MenuOption {
  final String name;
  final String route;
  final String icon;
  final Widget screen;

  MenuOption({
    required this.name,
    required this.route,
    required this.icon,
    required this.screen,
  });
}
