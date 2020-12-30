/// System Bars
// Code to set the two color schemes of status and nav bars.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Used for SystemChrome to color status/nav bars
import 'package:provider/provider.dart';
import 'package:flutter_app_darkmode_max/models/app_state.dart';

SystemUiOverlayStyle systemBarStyle(BuildContext context) {
  SystemUiOverlayStyle returnedStyle;

  // lightStyle1
  final SystemUiOverlayStyle lightStyle1 = SystemUiOverlayStyle.dark.copyWith(
    // Status
    statusBarBrightness: Brightness.light, // iOS only according to doco
    statusBarColor: Colors.transparent, // Colors.white,
    statusBarIconBrightness: Brightness.dark, // want dark icons

    // Navigation
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark, // light color icons
  );

  // darkStyle1
  final SystemUiOverlayStyle darkStyle1 = SystemUiOverlayStyle.light.copyWith(
    // Status
    statusBarBrightness: Brightness.dark, // iOS only according to doco
    statusBarColor: Colors.transparent, // Color(0xFF262626),
    statusBarIconBrightness: Brightness.light, // want light icons

    // Navigation
    systemNavigationBarColor: Colors.black, // Color(0xFF262626)
    systemNavigationBarIconBrightness: Brightness.light, // light color icons
  );

  // Get Setting ThemeMode from app state
  Brightness activeTheme = MediaQuery.platformBrightnessOf(context);
  ThemeMode themeSetting = Provider.of<ThemeNotifier>(context).currentTheme;

  if ((themeSetting == ThemeMode.system && activeTheme == Brightness.light) || (themeSetting == ThemeMode.light)) {
    returnedStyle = lightStyle1;

    /// Dark theme effective
    // user setting ThemeMode System and is Dark currently ... OR ... User setting Dark theme
  } else if ((themeSetting == ThemeMode.system && activeTheme == Brightness.dark) || (themeSetting == ThemeMode.dark)) {
    returnedStyle = darkStyle1;
  }

  return returnedStyle;
}
