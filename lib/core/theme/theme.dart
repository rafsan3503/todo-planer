import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData appDarkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.appBackgroundColor,

    fontFamily: "Roboto",
    brightness: Brightness.dark,
    primaryColorDark: AppColors.appPrimaryColor,
    textTheme: AppTextTheme.appTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 16),
        textStyle: AppTextTheme.appTextTheme.titleSmall,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
    ),
  );
}
