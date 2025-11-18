import 'package:flutter/material.dart';

class themeSwitch extends ChangeNotifier {
  ThemeMode _currentTheme = ThemeMode.dark; // Default theme
  bool isdark = false;

  ThemeMode get currentTheme => _currentTheme;

  void toggleTheme() {
    isdark = !isdark;
    _currentTheme = (_currentTheme == ThemeMode.light)
        ? ThemeMode.dark
        : ThemeMode.light;
    notifyListeners(); // Notify listeners to rebuild widgets
  }

  // Optional: Method to set a specific theme
  void setTheme(ThemeMode theme) {
    _currentTheme = theme;
    notifyListeners();
  }
}

final ThemeData lighttheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xff393c45),
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: Color(0xff23262f),
    backgroundColor: Color(0xffffffff),
  ),

  scaffoldBackgroundColor: const Color(0xffffffff),
);

final ThemeData darktheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xffffa131),
    brightness: Brightness.dark,
  ),

  appBarTheme: const AppBarTheme(
    foregroundColor: Color(0xffffffff),
    backgroundColor: Color(0xff23262f),
  ),
  scaffoldBackgroundColor: const Color(0xff23262f),
);
