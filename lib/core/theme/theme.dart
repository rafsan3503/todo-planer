import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData appDarkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.appBackgroundColor,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.appBackgroundColor),
    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.appBackgroundColor,
    ),

    fontFamily: "Roboto",
    brightness: Brightness.dark,
    primaryColorDark: AppColors.appPrimaryColor,
    textTheme: AppTextTheme.appTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 8),
        textStyle: AppTextTheme.appTextTheme.titleSmall,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.violet,
      iconSize: 32,
    ),
  );
}
