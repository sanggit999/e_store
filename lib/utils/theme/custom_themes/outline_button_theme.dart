import 'package:flutter/material.dart';

class MyOutlineButtonTheme{

  MyOutlineButtonTheme._();

  // Customizable Light Outline Button Theme
  static OutlinedButtonThemeData lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.blue),
        textStyle: const TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
        padding:const EdgeInsets.symmetric(horizontal: 20.0,vertical: 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0))
      )
  );

  // Customizable Dark Outline Button Theme
  static OutlinedButtonThemeData darkOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.blueAccent),
          textStyle: const TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.w600),
          padding:const EdgeInsets.symmetric(horizontal: 20.0,vertical: 16.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0))
      )
  );
}