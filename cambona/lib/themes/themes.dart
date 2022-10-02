import 'package:flutter/material.dart';

const primaryColor = Colors.green;

final lightTheme = ThemeData(
  //ESQUEMA DE CORES
  primaryColor: primaryColor,

  //APPBAR
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
  ),

  //ELEVATED BUTTOM
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: primaryColor,
      textStyle: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
      ),
    ),
  ),

  //TEXTOS
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w900,
      color: primaryColor,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
      color: Colors.black26,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
  ),

  //INPUT DECORATION THEME
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    labelStyle: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: primaryColor,
    ),
    iconColor: primaryColor,
    prefixIconColor: primaryColor,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 0.0),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
  ),
);
