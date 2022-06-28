import 'package:flutter/material.dart';
import 'package:internship_tasks_06/config/constants/colors_const.dart';
import 'package:internship_tasks_06/config/theme/color_schemes.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: 'Righteous',
    scaffoldBackgroundColor: AppColors.appMainColor,
    colorScheme: lightColorScheme,
    elevatedButtonTheme: _elevatedButtonThemeData,
  );

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(10, 10),
            topRight: Radius.elliptical(10, 10),
          ),
        ),
      ),
    ),
  );
}
