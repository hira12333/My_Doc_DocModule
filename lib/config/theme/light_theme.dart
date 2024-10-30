import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_fonts.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: kwhite,
  fontFamily: AppFonts.manrope,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: kwhite,
  ),
  splashColor: kwhite.withOpacity(0.10),
  highlightColor: kwhite.withOpacity(0.10),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: kwhite.withOpacity(0.1),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: kwhite,
  ),
);
