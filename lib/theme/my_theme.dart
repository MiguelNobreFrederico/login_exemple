import 'package:flutter/material.dart';
import 'package:login_exemple/theme/theme_colors.dart';

ThemeData MyTheme = ThemeData(
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
  ),
);
