import 'package:flutter/material.dart';
import 'package:music_app/core/constant/app_color.dart';

class AppTheme {
  static OutlineInputBorder border({required Color color}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: color, width: 3),
      );
  static final darkThemeMode = ThemeData().copyWith(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(24),
      focusedBorder: border(color: AppColor.gradient2),
      enabledBorder: border(color: AppColor.borderColor),
    ),
  );
}
