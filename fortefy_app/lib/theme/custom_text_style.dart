import 'package:flutter/material.dart';
import "../core/app_export.dart";

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}




class CustomTextStyles {

  static TextStyle get bodyMediumPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodyMediumPrimaryExtraLight =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w200,
      );
  static TextStyle get bodyMediumPrimaryRegular =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodyMediumRegular =>
      theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
    fontSize: 10.fSize,
  );
  static TextStyle get bodySmall10_1 => theme.textTheme.bodySmall!.copyWith(
    fontSize: 10.fSize,
  );
  static TextStyle get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.primary,
    fontSize: 10.fSize,
  );

  static TextStyle get interBluegray900 => TextStyle(
    color: appTheme.blueGray900,
    fontSize: 15.fSize,
    fontFamily: '',
    fontWeight: FontWeight.w500,
  ).inter;

  static TextStyle get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
    fontWeight: FontWeight.w700,
  );
  static TextStyle get labelMediumOnPrimary =>
      theme.textTheme.labelMedium!.copyWith(
    color: theme.colorScheme.onPrimary,
  );

  static TextStyle get titleMediumExtraBold =>
      theme.textTheme.labelMedium!.copyWith(
    fontWeight: FontWeight.w800,
  );
  static TextStyle get titleMediumPrimary =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get titleSmallBluegray900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray50,
  );
  static TextStyle get titleSmallGray700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
}