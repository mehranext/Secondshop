import 'package:flutter/material.dart';

/// -- Light & Dark Elevated Button Themes
class TElevatedbuttonTheme{
  TElevatedbuttonTheme._(); ///To avoid creating instances


  /// -- Light Theme
  static final lightElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const  TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold)
    )
  );

///-- Dart Theme
static final darkElevatedButton = ElevatedButtonThemeData(
style: ElevatedButton.styleFrom(
elevation: 0,
foregroundColor: Colors.white,
backgroundColor: Colors.blue,
disabledForegroundColor: Colors.grey,
disabledBackgroundColor: Colors.grey,
side: const BorderSide(color: Colors.blue),
padding: const EdgeInsets.symmetric(vertical: 18),
textStyle: const  TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
),
  );
}