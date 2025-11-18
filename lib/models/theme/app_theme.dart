import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.purple;
  static final ThemeData myTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 20,
      foregroundColor: Colors.white,
    ),
    listTileTheme: ListTileThemeData(iconColor: primaryColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.green),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      elevation: 5,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppTheme.primaryColor,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
}
