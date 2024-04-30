import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:virtual/core/utils/size_utils.dart';

import 'package:virtual/theme/theme_helper.dart';

//a collection of predefined text styles for customizing text appearance.
//catagorized by d/t fontfamlies and weights.

class CustomTextStyles {
  //Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall1OnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.Primary.withOpacity(1),
      );
  static get bodySmall1OnPrimary10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.Primary.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmall1OnPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmall1OnPrimaryContainer10 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  static get bodySmall1OnPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmall1OnPrimary_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmall1ff9098b1 => theme.textTheme.bodySmall!.copyWith(
        color: const Color(0xFF9098b1),
      );
  //HEADLINE TEXT STYLE

  static get headlineSmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.Primary.withOpacity(1),
      );
  //label text style
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargeBluegray300SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
        FontWeight: FontWeight.w600,
      );
  static get labelLargeIndigoA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.IndigoA200,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargeff40bfff => theme.textTheme.labelLarge!.copyWith(
        color: const Color(0xFF40BFFF),
      );
  static get labelLargeff5B61F4 => theme.textTheme.labelLarge!.copyWith(
        color: const Color(0XFF5B61F4),
      );
  static get labelLargeMediumBluegray300 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGrey300,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  //title text style

  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;

  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallBluegray300_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallPink300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink300,
      );
  static get titleSmallPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.Primary.withOpacity(1),
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(fontFamily: 'Poppins');
  }
}
