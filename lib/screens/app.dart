/// App
///
/// App code called after main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app_darkmode_max/models/app_state.dart';
import 'package:flutter_app_darkmode_max/resources/strings.dart';
import 'package:flutter_app_darkmode_max/screens/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // Consumer looks for an ancestor Provider widget
      // and retrieves its model (AppThemes, in this case).
      // Then it uses that model to build widgets, and will trigger
      // rebuilds if the model is updated.
      themeMode: Provider.of<ThemeNotifier>(context).currentTheme,
      //themeMode: ThemeMode.system,
      home: MyHomePage(title: Strings.appTitle),
    );
  }
}
