import 'package:flutter/material.dart';
import 'package:secondshop/utils/themes/textTheme.dart';
import 'appbar_theme.dart';
import 'bottom_sheet_theme.dart';
import 'checkbox_theme.dart';
import 'chip_theme.dart';
import 'elevated_button_theme.dart';
import 'outlined_button_theme.dart';
import 'text_field_theme.dart';

class TAppTheme{
  TAppTheme._();

   ///-- Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppbarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetThemeData.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedbuttonTheme.lightElevatedButton,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  ///--- Dark  Theme
  static ThemeData darkTheme  = ThemeData(
      useMaterial3: true,
      fontFamily: "",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppbarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetThemeData.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedbuttonTheme.darkElevatedButton,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,

  );
}