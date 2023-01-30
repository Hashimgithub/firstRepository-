import 'package:flutter/material.dart';

enum AppTheme {
  blueLight("Blue Light"),
  blueDark("Blue Dark"),
  redLight("Red Light"),
  redDark("Red Dark"),
  greenLight("Green Light"),
  greenDark("Green Dark"),
  yallowLight("Yallow Light"),
  yallowDark("Yallow Dark"),
  ;

  const AppTheme(this.name);
  final String name;
}

final appThemeData = {
  AppTheme.blueLight: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    iconTheme: const IconThemeData(color: Colors.blue),
    backgroundColor: Colors.blue,
  ),
  AppTheme.blueDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
    iconTheme: IconThemeData(color: Colors.blue[700]),
  ),
  AppTheme.redLight: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.red[300]),
    brightness: Brightness.light,
    primaryColor: Colors.red[300],
    iconTheme: IconThemeData(color: Colors.red[300]),
  ),
  AppTheme.redDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.red[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.red[700],
    iconTheme: IconThemeData(color: Colors.red[700]),
    backgroundColor: Colors.red[700],
  ),
  AppTheme.greenLight: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.green[300]),
    brightness: Brightness.light,
    primaryColor: Colors.green[300],
    iconTheme: IconThemeData(color: Colors.green[300]),
  ),
  AppTheme.greenDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.green[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
    iconTheme: IconThemeData(color: Colors.green[700]),
  ),
  AppTheme.yallowLight: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.yellow[300]),
    brightness: Brightness.light,
    primaryColor: Colors.yellow[300],
    iconTheme: IconThemeData(color: Colors.yellow[300]),
  ),
  AppTheme.yallowDark: ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.yellow[700]),
    brightness: Brightness.dark,
    primaryColor: Colors.yellow[700],
    iconTheme: IconThemeData(color: Colors.yellow[700]),
  ),
};
