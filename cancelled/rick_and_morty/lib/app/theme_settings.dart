import 'package:flutter/material.dart';

class ThemeSettings {
  ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Inter',
      colorScheme: ColorScheme.light(
        primary: Color(0xFF42B4CA),
        secondary: Color(0xFFD5E9ED),
        surface: Colors.white,
        onSurface: Color(0xFF414A4C),
        error: Color(0xFFEA7979),
        tertiary: Color(0xFFB5C4C7),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(foregroundColor: Color(0xFF42B4CA)),
      ),
    );
  }
}
