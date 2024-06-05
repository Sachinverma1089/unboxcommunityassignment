import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.roboto(fontSize: size, color: color, fontWeight: fw);
}

TextStyle appstyleWithHeight(
    double size, Color color, FontWeight fw, double ht) {
  return GoogleFonts.roboto(
      fontSize: size, color: color, fontWeight: fw, height: ht);
}
