/// App
///
/// App code called after main.dart

import 'package:flutter/material.dart';

/// Provider Model
class ThemeNotifier with ChangeNotifier {
  // Default to system theme mode to start
  ThemeMode currentThemeMode = ThemeMode.system;

  void themeModeChange(ThemeMode newThemeMode) {
    currentThemeMode = newThemeMode;
    notifyListeners();
  }

  get currentTheme => currentThemeMode;
}
