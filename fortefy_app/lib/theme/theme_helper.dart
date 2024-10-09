import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();




class ThemeHelper {

  var _appTheme = PrefUtils().getThemeData();


  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };


  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };


  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }


  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.indigo800,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if(states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primary,
      ),
    );
  }


  LightCodeColors themeColor() => _getThemeColors();


  ThemeData themeData() => _getThemeData();
}


class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: appTheme.gray600,
      fontSize: 16.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 13.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
    ),
    bodySmall: TextStyle(
      color: appTheme.black900,
      fontSize: 9.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w300,
    ),
    labelLarge: TextStyle(
      color: appTheme.gray50,
      fontSize: 12.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 10.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 20.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 17.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: appTheme.gray60001,
      fontSize: 15.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
  );
}


class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0X1E196165),
    errorContainer: Color(0X1E0DCEDA),
    onPrimary: Color(0XFF1C362E),
  );
}


class LightCodeColors {

  Color get black900 => Color(0XFF000000);

  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray900 => Color(0XFF1C372E);
  Color get blueGray90001 => Color(0XFF1B372D);

  Color get cyan4001e => Color(0X1E32C2CB);

  Color get cyan900 => Color(0XFF076C69);
  Color get cyanA70068 => Color(0X680DB9D0);

  Color get gray50 => Color(0XFFFFF9F9);
  Color get gray600 => Color(0XFF887C7C);
  Color get gray60001 => Color(0XFF877C7C);
  Color get gray700 => Color(0XFF5F5C5C);
  Color get gray70001 => Color(0XFF5F6764);

  Color get greenA4001e => Color(0X1E00FF93);

  Color get indigo800 => Color(0XFF2C3C8E);

  Color get red800 => Color(0XFFA84242);

  Color get teal700 => Color(0XFF107E56);
  Color get teal800 => Color(0XFF25785A);
  Color get teal80001 => Color(0XFF216F5F);

  Color get tealA4001e => Color(0X1E2EF6AE);
}