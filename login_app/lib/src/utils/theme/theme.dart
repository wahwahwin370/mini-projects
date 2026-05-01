
import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:login_app/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.purple,
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: AppBarTheme(),
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      cardColor: Colors.black.withOpacity(0.1),
  );
  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.pink,
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: AppBarTheme(),
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      cardColor: Colors.white.withOpacity(0.1),
  );

}
