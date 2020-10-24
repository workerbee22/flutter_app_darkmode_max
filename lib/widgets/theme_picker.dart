/// Theme Picker widget
///
/// Provides a dialogue for users to select which theme they would like. Only valid on Android and some other
/// operating systems. Follows Android theme selection recommendations.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app_darkmode_max/models/app_state.dart';

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
