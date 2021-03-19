import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color cardBackground = Color(0xFFF5F5F5);
  static const Color appBackground = Colors.white;
  static const Color flatButtonBackground = Color(0xFFAAAAAA);
  static const Color textFieldBackground = Color(0xFFE0E0E0);
  static const Color primaryColor = Color(0xFF295CB3);
  static const Color secondaryColor = Color(0xFFB3295C);
  static const Color tertiaryColor = Color(0x7D3474E0);

  static const Color primaryTextColor = Colors.black;
  static const Color secondaryTextColor = Color(0xFF424242);
  static const Color contrastTextColor = Colors.white;
  static const Color hintTextColor = Color(0xFF455A64);

  static String primaryFontFamily = 'Poppins';
  static String secondaryFontFamily = 'Quicksand';

  static TextStyle get title1 => GoogleFonts.getFont(
        //'Julius Sans One',
        //'Arima Madurai',
        'Fredericka the Great',
        color: primaryTextColor,
        // fontWeight: FontWeight.bold,
        // fontStyle: FontStyle.italic,
        fontSize: 50,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        //'Roboto Condensed',
        'Pavanam',
        color: primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Lato',
        color: secondaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        primaryFontFamily,
        color: secondaryTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        secondaryFontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        primaryFontFamily,
        color: primaryTextColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        secondaryFontFamily,
        color: secondaryTextColor,
        fontWeight: FontWeight.w300,
        fontSize: 14,
      );
  static TextStyle get contrastText => bodyText1.override(
        primaryFontFamily,
        color: contrastTextColor,
      );
  static TextStyle get hintText => GoogleFonts.getFont(
        primaryFontFamily,
        color: hintTextColor,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get hyperlinkText => bodyText1.override(
        primaryFontFamily,
        color: primaryColor,
        decoration: TextDecoration.underline,
      );

  static ButtonStyle flatButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (states) => flatButtonBackground,
    ),
    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
      (states) => bodyText1,
    ),
    foregroundColor: MaterialStateProperty.resolveWith<Color>(
      (states) => primaryTextColor,
    ),
  );
}

extension TextStyleHelper on TextStyle {
  TextStyle override(
    String fontFamily, {
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    var result = GoogleFonts.getFont(
      fontFamily,
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
      fontStyle: fontStyle ?? this.fontStyle,
      fontWeight: fontWeight ?? this.fontWeight,
    );

    if (decoration != null) {
      result = result.apply(decoration: decoration);
    }

    return result;
  }
}
