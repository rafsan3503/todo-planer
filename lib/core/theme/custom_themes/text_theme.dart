import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme appTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w600,
      fontSize: 24,
    ),

    headlineMedium: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w500,
      fontSize: 24,
    ),
    headlineSmall: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),

    titleLarge: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Recoleta",
    ),
    titleMedium: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    ),
    titleSmall: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyLarge: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    bodyMedium: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    bodySmall: TextStyle().copyWith(
      color: AppColors.appWhiteColor,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
  );
}
