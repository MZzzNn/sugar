import 'package:flutter/material.dart';

class ThemeManager {
  static const Color red = Color(0xFFF33A3A);
  static Color redMedium = const Color(0xFFF18576).withOpacity(0.8);
  static Color redLight = const Color(0xFFF18576).withOpacity(0.5);

  static const Color blue = Color(0xFF08547B);
  static const Color blueLight = Color(0xFF6EC1D4);

  static const Color grey = Color(0xFF707070);
  static const Color greyLight = Color(0xFFF9F9F9);

  static const Color green = Color(0xFF41CA5C);

  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: blue),
    ),
    colorScheme: ThemeData().colorScheme.copyWith(primary: blue),
    iconTheme: const IconThemeData(color: grey, size: 20),
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFFFFFFF),
      hintStyle: TextStyle(color: grey),
      contentPadding: EdgeInsets.zero,
      isCollapsed: true,
      isDense: true,
      border: _border,
      enabledBorder: _border,
      focusedBorder: _border,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: blue,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  static const InputBorder _border = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: grey,
      style: BorderStyle.solid,
      width: 1,
    ),
  );
}
