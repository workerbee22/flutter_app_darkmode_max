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
      title: Text(
        'Choose theme',
        style: Theme.of(context).textTheme.headline5,
      ),
      children: <Widget>[
        RadioListTile(
          title: Text('Light', style: Theme.of(context).textTheme.bodyText2),
          controlAffinity: ListTileControlAffinity.trailing,
          // If activeColor is null defaults to Theme accent color
          //activeColor: Theme.of(context).errorColor,
          value: ThemeMode.light,
          groupValue: Provider.of<ThemeNotifier>(context).currentTheme,
          onChanged: (value) {
            Provider.of<ThemeNotifier>(context, listen: false).themeModeChange(value);
            //Navigator.pop(context);
          },
        ),
        RadioListTile(
          title: Text(
            'Dark',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          controlAffinity: ListTileControlAffinity.trailing,
          // If activeColor is null defaults to Theme accent color
          //activeColor: Theme.of(context).errorColor,
          value: ThemeMode.dark,
          groupValue: Provider.of<ThemeNotifier>(context).currentTheme,
          onChanged: (value) {
            Provider.of<ThemeNotifier>(context, listen: false).themeModeChange(value);
            //Navigator.pop(context);
          },
        ),
        RadioListTile(
          title: Text(
            'System controlled',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          controlAffinity: ListTileControlAffinity.trailing,
          // If activeColor is null defaults to Theme accent color
          //activeColor: Theme.of(context).errorColor,
          value: ThemeMode.system,
          groupValue: Provider.of<ThemeNotifier>(context).currentTheme,
          onChanged: (value) {
            Provider.of<ThemeNotifier>(context, listen: false).themeModeChange(value);
            //Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
