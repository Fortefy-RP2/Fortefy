import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {

  static BoxDecoration get fillBlack => BoxDecoration(
    color: appTheme.black900,
  );
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray100,
  );
  static BoxDecoration get fillRed => BoxDecoration(
    color: appTheme.red800,
  );
  static BoxDecoration get fillTeal => BoxDecoration(
    color: appTheme.teal80001,
  );

  static BoxDecoration get gradientCyanEToPrimaryContainer => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.cyan4001e,
        appTheme.greenA4001e,
        theme.colorScheme.primaryContainer
      ],
    ),
  );
  static BoxDecoration get gradientTealAEToCyanA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.tealA4001e.withOpacity(0.41), appTheme.cyanA70068],
    ),
  );
  static BoxDecoration get gradientTealAEToErrorContainer => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.tealA4001e, theme.colorScheme.errorContainer],
    ),
  );
}

class BorderRadiusStyle {

  static BorderRadius get roundedBorder12 => BorderRadius.circular(
    12.h,
  );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
    16.h,
  );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
    20.h,
  );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
    32.h,
  );
  static BorderRadius get roundedBorder46 => BorderRadius.circular(
    46.h,
  );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
    8.h,
  );
}