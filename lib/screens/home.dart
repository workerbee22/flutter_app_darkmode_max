/// Home
///
/// Home screen run after main.dart and app.dart

import 'package:flutter/material.dart';

import 'package:flutter_app_darkmode_max/resources/themes.dart';
import 'package:flutter_app_darkmode_max/widgets/theme_picker.dart';
import 'package:flutter_app_darkmode_max/resources/system_bars.dart';

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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: systemBarStyle(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              RaisedButton(
                child: Text(
                  'Choose theme',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                onPressed: () {
                  _asyncSimpleDialog(context);
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
