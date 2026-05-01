import 'package:flutter/material.dart';

class TTextButtonTheme {
  TTextButtonTheme._();

  //light Theme
  static final lightTextButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        foregroundColor: Colors.black, // Set text color here
      )
  );

  //dark theme
  static final darkTextButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        foregroundColor: Colors.white, // Set text color here
      )
  );
}
