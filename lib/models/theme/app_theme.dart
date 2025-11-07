import 'package:flutter/material.dart';

class AppTheme {
  static const purple = Colors.purple;
  static final ThemeData myTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: purple,
    appBarTheme: const AppBarTheme(
      backgroundColor: purple,
      elevation: 20,
      foregroundColor: Colors.white,
    ),
    listTileTheme: ListTileThemeData(iconColor: purple),
  );
}
