import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appstyle {
  static Color maincolor = Color(0xFF000633);
  static Color accentcolor = Color(0XFF0065FF);
  static Color bgcolor = Color(0XFFe2e2ee);
  static List<Color> cardscolor = [
    Color(0XFF0065FF),
    Colors.yellow,
    Colors.redAccent,
    Colors.orange,
    Colors.blueAccent,
    Colors.green,
    Colors.grey,
  ];
  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18.0, fontWeight: FontWeight.bold);
  static TextStyle content =
      GoogleFonts.nunito(fontSize: 16.0, fontWeight: FontWeight.normal);
  static TextStyle dateTitle =
      GoogleFonts.roboto(fontSize: 10.0, fontWeight: FontWeight.normal);
}
