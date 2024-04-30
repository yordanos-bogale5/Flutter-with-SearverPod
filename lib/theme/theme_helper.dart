import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:virtual/core/utils/pref_utils.dart';
import 'package:virtual/core/utils/size_utils.dart';

// helper class for managing themes and colors
class ThemeHelper {
  //current app theme
  var _appTheme = PrefUtils().getThemeData();

  //a map of custom color themes suppported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

  // a map of color schemes suported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  //the way to return the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  // return the current theme data.

  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          shadowColor: colorScheme.primary,
          elevation: 10,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blue50,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blue50,
      ),
    );
  }

  // returns the primary colors for the current theme
  PrimaryColors themeColor() => _getThemeColors();

  // returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

// class that containing the supported text theme styles.

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: appTheme.blueGray300,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.pink300,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      );
}

//class containing the supported color schemes.

class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    //primary colors
    primary: Color(0X3D40BFFF),
    secondaryContainer: Color(0XFF53D1B6),

    // on color (text colors)
    onPrimary: Color(0X87223263),
    onPrimaryContainer: Color(0X87FFFFFF),
  );
}

//  class containing custom colors for a primary theme.
class PrimaryColors {
  //amber
  Color get amber500 => const Color(0XFFFFC107);
  //black
  Color get black900 => const Color(0XFF000000);
  //blue
  Color get blue50 => const Color(0XFFEAEFFF);
  Color get blueA200 => const Color(0XFF4091FF);
  //bluegray
  Color get blueGray300 => const Color(0Xff9098B1);
  Color get blueGray400 => const Color(0XFF888888);
  //gray
  Color get gray400 => const Color(0XFFC4C4C4);
  //indigo
  Color get indigoA200 => const Color(0XFF5B61F4);
  //lightblue
  Color get lightBlue600 => const Color(0XFF039BE5);
  //pink
  Color get pink300 => const Color(0XFFFB7181);
  //yellow
  Color get yellow700 => const Color(0XFFFFC732);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
