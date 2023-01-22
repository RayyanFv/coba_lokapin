import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xff1700AF);
Color hintFontColor = Color(0xff667085);
Color secondaryFontColor = Color(0xff344054);
Color primaryFontColor = Color(0xff000000);
Color headerFontColor = Color(0xffFFFFFF);

TextStyle primaryTextStyle = GoogleFonts.inter(
  color: secondaryFontColor,
  fontSize: 14,
  fontWeight: primaryWeight
);

TextStyle secondaryHeaderTextStyle = GoogleFonts.inter(
  fontSize: 14,
  fontWeight: primaryWeight,
  color: headerFontColor
);

TextStyle headerTextStyle = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: headerWeight,
    color: headerFontColor
);

TextStyle secondaryFontStyle = GoogleFonts.inter(
  color: secondaryFontColor,
  fontWeight: FontWeight.bold
);

TextStyle hintFontStyle = GoogleFonts.inter(
    color: hintFontColor
);

FontWeight primaryWeight = FontWeight.w500;
FontWeight secondaryWeight = FontWeight.w400;
FontWeight headerWeight = FontWeight.w600;