import 'package:flutter/material.dart';

abstract class AppTheme{
  static ThemeData get light{
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 10,
        color: Colors.white
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      // splashColor: Colors.transparent,
      // fontFamily: 
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
      useMaterial3: true,
    );
  }
}