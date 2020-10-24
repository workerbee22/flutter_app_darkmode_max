/// Home
///
/// Home screen run after main.dart and app.dart

import 'package:flutter/material.dart';

import 'package:flutter_app_darkmode_max/widgets/theme_picker.dart';

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
