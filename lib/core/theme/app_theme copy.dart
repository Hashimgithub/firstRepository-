import 'package:flutter/material.dart';

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: Colors.blue,
      backgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    AppTheme.redTheme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: Colors.red,
      backgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.red,
        ),
      ),
    ),
    AppTheme.darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primarySwatch: Colors.teal,
      backgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
    )
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
  redTheme,
}
