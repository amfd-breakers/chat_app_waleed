import 'package:flutter/material.dart';

Color textColor = Colors.white;

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x0043116a)),
  primaryColor: Colors.deepPurple,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: Colors.grey.shade900,
    titleTextStyle: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: textColor,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w800,
    ),
  ),
);
