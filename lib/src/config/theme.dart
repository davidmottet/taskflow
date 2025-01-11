import 'package:flutter/material.dart';

class AppTheme {
  static const Color black = Color(0xFF1f1f1f);
  static const Color white = Color(0xFFFFFFFF);

  static const Color background = black;
  static const Color text = white;
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
          backgroundColor: background,
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
  Color get customViolet => const Color(0xFF673DEA);
  Color get customGreen => const Color(0xFFCBD87D);
  Color get customOrange => const Color(0xFFF9CD63);
  Color get customRed => const Color(0xFFF9CD63);
  Color get customBlue => const Color(0xFFF9CD63);
  Color get customTeal => const Color(0xFF5CC397);
  Color get customMint => const Color(0xFF5CC397);
  Color get customIconBackground => Color(0xFF363636);
}