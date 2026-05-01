import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

// Light & Dark Evaluated Button Themes
class TElevatedButtonTheme{

  // light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation:0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  //dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation:0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}