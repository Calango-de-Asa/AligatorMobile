import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final lightTheme = ThemeData(
    colorScheme: _colorScheme,
    textTheme: _textTheme,
  );

  static final _colorScheme = ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.grey.shade700,
    secondary: Colors.white,
    secondaryVariant: Colors.white,
    surface: Colors.white,
    background: Colors.white,
    error: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  static final _textTheme = TextTheme(
      headline1: TextStyle(fontSize: 80, fontWeight: FontWeight.w500),);
}
