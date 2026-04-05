import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.zenDots().fontFamily,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.tektur().fontFamily,
    ),
    displaySmall: TextStyle(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.tektur().fontFamily,
    ),
  ),
);
