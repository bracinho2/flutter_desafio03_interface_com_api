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
      backgroundColor: primaryColor,
      textStyle: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
      ),
    ),
  ),

  //TEXTOS
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 150,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat',
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat',
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 100,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        color: Colors.green),
    labelLarge: TextStyle(
      fontSize: 80,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat',
    ),
    headlineSmall: TextStyle(
      fontFamily: 'ROBOTO',
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: Colors.white,
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
