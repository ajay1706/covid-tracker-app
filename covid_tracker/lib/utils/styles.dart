import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static final casesStyle = GoogleFonts.roboto(
    fontSize: 22,
  );
  static final appBarStyle = GoogleFonts.robotoMono(
    fontSize: 22,
  );
  static final activeStyle = GoogleFonts.workSans(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(255, 255, 255, 1));
  static final numberStyle = GoogleFonts.spicyRice(
      fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1));

  static final lineStyle =
  GoogleFonts.ubuntu(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1));

  static final headingStyle =
  GoogleFonts.robotoMono(fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1),
  fontWeight: FontWeight.w600);

  static final mottoStyle =
  GoogleFonts.dancingScript( color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 40,
      fontWeight: FontWeight.w800);
}
