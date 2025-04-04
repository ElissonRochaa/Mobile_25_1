import 'package:flutter/material.dart';

class ThemeApp {
    static final theme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFE47034),
      onPrimary: Colors.white,
      secondary: Color(0xFFF7D4C1),
      onSecondary: Colors.black,
      tertiary: Color(0xFFB5855D),
      onTertiary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.grey[200]!,
      onSurface: Colors.black,
    ),
  );
}
