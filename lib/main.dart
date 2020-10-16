import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // I am using 3.1.0 but this example used 2.0.1 so more options available in provider now

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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Dark Mode',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      // Consumer looks for an ancestor Provider widget
      // and retrieves its model (AppThemes, in this case).
      // Then it uses that model to build widgets, and will trigger
      // rebuilds if the model is updated.
      themeMode: Provider.of<ThemeNotifier>(context).currentTheme,
      //themeMode: ThemeMode.system,
      home: MyHomePage(title: 'Flutter Demo Dark Mode'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _asyncSimpleDialog(BuildContext context) async {
    await showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return ThemePickerDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            RaisedButton(
              child: Text('Choose theme'),
              onPressed: () {
                _asyncSimpleDialog(context);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ThemePickerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Choose theme'),
      children: <Widget>[
        RadioListTile(
          title: Text('Light'),
          controlAffinity: ListTileControlAffinity.trailing,
          value: ThemeMode.light,
          groupValue: Provider.of<ThemeNotifier>(context).currentTheme,
          onChanged: (value) {
            Provider.of<ThemeNotifier>(context, listen: false).themeModeChange(value);
            //Navigator.pop(context);
            print('Theme Light');
          },
        ),
        RadioListTile(
          title: Text('Dark'),
          controlAffinity: ListTileControlAffinity.trailing,
          value: ThemeMode.dark,
          groupValue: Provider.of<ThemeNotifier>(context).currentTheme,
          onChanged: (value) {
            Provider.of<ThemeNotifier>(context, listen: false).themeModeChange(value);
            //Navigator.pop(context);
            print('Theme Dark');
          },
        ),
        RadioListTile(
          title: Text('System controlled'),
          controlAffinity: ListTileControlAffinity.trailing,
          value: ThemeMode.system,
          groupValue: Provider.of<ThemeNotifier>(context).currentTheme,
          onChanged: (value) {
            Provider.of<ThemeNotifier>(context, listen: false).themeModeChange(value);
            //Navigator.pop(context);
            print('Theme System');
          },
        ),
      ],
    );
  }
}
