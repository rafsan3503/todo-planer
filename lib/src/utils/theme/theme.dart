import 'package:feature_first_template/src/utils/constants/colors.dart';
import 'package:feature_first_template/src/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData appDarkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.appBackgroundColor,

    fontFamily: "Roboto",
    brightness: Brightness.dark,
    primaryColorDark: AppColors.appPrimaryColor,
    textTheme: AppTextTheme.appTextTheme,
  );
}
