import 'package:flutter/material.dart';

class Themes {
  static const Color primaryColor = Colors.black;
  static const Color complementaryColor = Colors.white;
  static const Color accentColor = Color(0xFF102A16);

  static ThemeData appTheme() => ThemeData(
        backgroundColor: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: accentColor,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 39,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 39,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          headline4: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          subtitle1: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
