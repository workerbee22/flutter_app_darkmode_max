/// Flutter Dark Mode Max
///
/// An example to show light/dark mode operation on Android, iOS, iPadOS, macOS and Windows
/// Features implemented:
/// - Launch Screen - Automatically adapts Launch Screen to operating system setting for light or dark mode
/// - Launch Screen - Different assets based on operating system setting for light or dark mode
/// TODO - System bars coloring as well in theme
/// TODO - Persist theme choice by user
/// TODO - Show operating system drawn UI elements - like Share
/// TODO - White label theme

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app_darkmode_max/screens/app.dart';
import 'package:flutter_app_darkmode_max/models/app_state.dart';

void main() {
  runApp(
    // Provide the model to all widgets within the app. We're using
    // ChangeNotifierProvider because that's a simple way to rebuild
    // widgets when a model changes. We could also just use
    // Provider, but then we would have to listen to Counter ourselves.
    // Read Provider's docs to learn about all the available providers.
    ChangeNotifierProvider(
      // Initialize the model in the builder. That way, Provider
      // can own AppThemes's lifecycle, making sure to call `dispose`
      // when not needed anymore.
      create: (context) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}
