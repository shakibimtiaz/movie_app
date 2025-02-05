import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Global globalTextStyle function
TextStyle globalTextStyle({
  double fontSize = 15.0,
  FontWeight fontWeight = FontWeight.normal,
  double lineHeight = 1.5,
  TextAlign textAlign = TextAlign.center,
  Color color = Colors.black,
  TextDecoration decoration = TextDecoration.none, // Add decoration parameter
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    height: lineHeight,
    color: color,
    decoration: decoration, // Apply decoration
  );
}