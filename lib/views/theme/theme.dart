import 'package:flutter/material.dart';

abstract class AppTheme {
  static final _light = ThemeData(
    primarySwatch: Colors.blue,
  );

  static final _dark = ThemeData(

  );

  static ThemeData current = _light;
}
