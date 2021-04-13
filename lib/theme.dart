import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColorBrightness: Brightness.dark,
  accentColorBrightness: Brightness.dark,
  errorColor: Colors.red[800],
  buttonColor: Colors.grey[500],

  // Define the default font family.
  fontFamily: 'Open Sans',

  textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.grey[800]),
      headline2: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[800]),
      headline3: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[800]),
      headline4: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[800]),
      headline5: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[800]),
      headline6: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[800]),
      bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
      bodyText2: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
      subtitle1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[800]),
      subtitle2: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[600]),
      button: TextStyle(fontSize: 16.0, color: Colors.white)),
);

//final ThemeData darkTheme = ThemeData.dark();

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColorBrightness: Brightness.light,
  accentColorBrightness: Brightness.light,
  backgroundColor: Colors.grey[850],
  dialogBackgroundColor: Colors.grey[850],
  scaffoldBackgroundColor: Colors.grey[850],
  buttonColor: Colors.grey[800],

  // Define the default font family.
  fontFamily: 'Open Sans Light',

  textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.grey[400]),
      headline2: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[400]),
      headline3: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[400]),
      headline4: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[400]),
      headline5: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[400]),
      headline6: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[400]),
      bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
      bodyText2: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
      subtitle1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[400]),
      subtitle2: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.grey[400]),
      button: TextStyle(fontSize: 16.0, color: Colors.white)),
);
