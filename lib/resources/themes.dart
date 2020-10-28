/// Strings
///
/// Class for the main themes of the app

import 'package:flutter/material.dart';

class Themes {
  static final ThemeData appThemeLight = ThemeData.light().copyWith(
    //brightness: Brightness.light,
    primaryColor: Colors.red,
    accentColor: Colors.redAccent, // Used by FAB for backgroundColor
    errorColor: Colors.black45,
    // appBarTheme: AppBarTheme(
    //   color: Colors.red, // Used by AppBar for backgroundColor
    // ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.orange,
      splashColor: Colors.orangeAccent,
      padding: EdgeInsets.only(left: 26.0, right: 26.0, top: 16.0, bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      textTheme: ButtonTextTheme.normal,
    ),
    textTheme: TextTheme(
      headline1: ThemeData.light().textTheme.headline1,
      headline2: ThemeData.light().textTheme.headline2,
      headline3: TextStyle(
        fontSize: 20.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
      headline4: TextStyle(
        fontSize: 18.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      headline5: TextStyle(
        fontSize: 17.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
      headline6: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'ProductSans',
        color: Colors.black54,
      ),
      subtitle1: TextStyle(
        fontSize: 12.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w100,
        color: Colors.black54,
        // Line spacing
        height: 1.5,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w800,
        color: Colors.black54,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      caption: TextStyle(
        fontSize: 16.0,
        fontFamily: 'ProductSans',
        height: 1.5,
        color: Colors.black54,
      ),
      button: TextStyle(
        fontSize: 15.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      ),
      subtitle2: ThemeData.light().textTheme.subtitle2,
      overline: ThemeData.light().textTheme.overline,
    ),
  );
  static final ThemeData appThemeDark = ThemeData.dark().copyWith(
    //brightness: Brightness.dark,
    primaryColor: Colors.green,
    accentColor: Colors.greenAccent, // Used by FAB for backgroundColor
    errorColor: Colors.black45,
    // appBarTheme: AppBarTheme(
    //   color: Colors.green, // Used by AppBar for backgroundColor
    // ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      splashColor: Colors.blueAccent,
      padding: EdgeInsets.only(left: 26.0, right: 26.0, top: 16.0, bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      textTheme: ButtonTextTheme.normal,
    ),
    textTheme: TextTheme(
      headline1: ThemeData.light().textTheme.headline1,
      headline2: ThemeData.light().textTheme.headline2,
      headline3: TextStyle(
        fontSize: 20.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      headline4: TextStyle(
        fontSize: 18.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w400,
        color: Colors.black54,
      ),
      headline5: TextStyle(
        fontSize: 17.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'ProductSans',
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 12.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w100,
        color: Colors.white,
        // Line spacing
        height: 1.5,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w800,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      caption: TextStyle(
        fontSize: 16.0,
        fontFamily: 'ProductSans',
        height: 1.5,
        color: Colors.white,
      ),
      button: TextStyle(
        fontSize: 15.0,
        fontFamily: 'ProductSans',
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      subtitle2: ThemeData.dark().textTheme.subtitle2,
      overline: ThemeData.dark().textTheme.overline,
    ),
  );
}
