import 'package:flutter/material.dart';
import '../core/app_export.dart';


class CustomButtonStyles {

  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray90001,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius.circular(10.h),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray70001,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius.circular(10.h),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius.circular(8.h),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillTeal => ElevatedButton.styleFrom(
    backgroundColor: appTheme.teal80001,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius.circular(8.h),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );

  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
    side: MaterialStateProperty.all<BorderSide>(
      BorderSide(color: Colors.transparent),
    ));
}