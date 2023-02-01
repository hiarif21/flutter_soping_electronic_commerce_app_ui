import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soping/src/styles/colors_app.dart';

class ThemesApp {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsApp.neutral100,
    fontFamily: GoogleFonts.inter().fontFamily,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: ColorsApp.slate900),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsApp.slate900,
    fontFamily: GoogleFonts.inter().fontFamily,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: ColorsApp.slate100),
    ),
  );
}
