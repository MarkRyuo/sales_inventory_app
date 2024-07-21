import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorText = Color(0xB32D2D2A);
  static const Color colorBackground = Color(0xFFFFFAEB);
  static const Color colorPrimary = Color(0xFF8AFF8A);
  static const Color colorSecondary = Color(0xFF00D100);
  static const Color colorAccent = Color(0xFF00FF00);

  static ThemeData get theme {
    return ThemeData(
      primaryColor: colorPrimary,
      hintColor: colorAccent,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: colorText, fontFamily: 'Poppins'),
        bodyMedium: TextStyle(color: colorText, fontFamily: 'Poppins'),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: colorPrimary,
        secondary: colorSecondary,
        background: colorBackground,
        surface: colorBackground,
        onBackground: colorText,
        onSurface: colorText,
      ),
    );
  }
}
