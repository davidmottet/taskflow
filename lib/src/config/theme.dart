import 'package:flutter/material.dart';

class AppTheme {
  static const Color black = Color(0xFF1f1f1f);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGreen = Color(0xFFc6e5ae);
  static const Color lightOrange = Color(0xFFfadd72);
  static const Color lightBlue = Color(0xFFaed8e5);
  static const Color darkText = Color(0xFF0C0C0D);

  static const Color background = Color(0xFF1f1f1f);
  static const Color text = Color(0xFFFFFFFF);
  static const Color iconBackground = Color(0xFF363636);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: black,
      colorScheme: ColorScheme.light(
        primary: black,
        secondary: white,
        surface: background,
        onSurface: text,
      ),
      
      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        elevation: 0,
        iconTheme: IconThemeData(color: text),
      ),

      // Boutons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: darkText,
          foregroundColor: text,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),

      // Input
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: background,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color.fromARGB(255, 38, 38, 41), width: 1),
        ),
      ),

      // Icones
      iconTheme: const IconThemeData(
        color: text,
      ),
    );
  }
}

extension CustomColors on ThemeData {
  Color get customLightGreen => AppTheme.lightGreen;
  Color get customLightOrange => AppTheme.lightOrange;
  Color get customIconBackground => Color(0xFF363636);
}