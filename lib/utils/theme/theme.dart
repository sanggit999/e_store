import 'package:e_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_store/utils/theme/custom_themes/elevate_button_theme.dart';
import 'package:e_store/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:e_store/utils/theme/custom_themes/text_button_theme.dart';
import 'package:e_store/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:e_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
    elevatedButtonTheme:MyElevateButtonTheme.lightElevateButtonTheme,
    appBarTheme:MyAppBarTheme.lightAppBarTheme,
    bottomSheetTheme:MyBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme:MyCheckboxTheme.lightCheckboxTheme,
    chipTheme:MyChipTheme.lightChipTheme,
    outlinedButtonTheme: MyOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme:MyTextFormFieldTheme.lightInputDecorationTheme,
    textButtonTheme: MyTextButtonTheme.lightTextButtonThemeData,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.darkTextTheme,
    elevatedButtonTheme: MyElevateButtonTheme.darkElevateButtonTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    chipTheme:MyChipTheme.darkChipTheme,
    outlinedButtonTheme: MyOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme:MyTextFormFieldTheme.darkInputDecorationTheme,
    textButtonTheme: MyTextButtonTheme.darkTextButtonThemeData,
  );
}
