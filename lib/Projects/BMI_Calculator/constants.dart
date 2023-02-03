import 'package:flutter/material.dart';

Color kActiveCardColor = const Color.fromRGBO(50, 50, 68, 100);
Color kInactiveCardColor = const Color.fromRGBO(36, 38, 59, 100);
Color kBottomContainerColor = const Color(0xFFEB1555);

ThemeData kCustomThemeData = ThemeData(
  primaryColor: const Color.fromRGBO(29, 33, 54, 100),
  scaffoldBackgroundColor: const Color.fromRGBO(29, 33, 54, 100),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color.fromRGBO(29, 33, 54, 100),
  ),
);

TextStyle kTextStyle = const TextStyle(fontSize: 18, color: Colors.white70);
TextStyle kBigTextStyle = const TextStyle(
    fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white);
