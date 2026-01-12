import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static TextStyle font20WhiteRegular = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.inriaSerif().fontFamily,
    color: Colors.white,
  );
  static const TextStyle font18WhiteSemiBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static const TextStyle font18WhiteBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );
  static const TextStyle font16WhiteBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );
  static TextStyle font14GreyRegular = GoogleFonts.inriaSerif(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );
}
