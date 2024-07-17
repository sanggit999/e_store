import 'package:flutter/material.dart';

class MyTextButtonTheme {

  static TextButtonThemeData lightTextButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.black),
  );


  static TextButtonThemeData darkTextButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.white),
  );
}
