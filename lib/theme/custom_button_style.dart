import 'package:flutter/material.dart';

import 'package:virtual/core/app_export.dart';

// a class that offers pre-defined button style for customizing button appearance.
class CustomButtonStyle {
//filled bitton style
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.Primary.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(5.h),
          ),
        ),
      );
  //text  button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
