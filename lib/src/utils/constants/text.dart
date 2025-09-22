import 'package:feature_first_template/src/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppText {
  const AppText._();

  static Widget splashLogoText = RichText(
    text: TextSpan(
      style: AppTextTheme.appTextTheme.headlineMedium,
      children: const <TextSpan>[
        TextSpan(
          text: 'To-Do',
          style: TextStyle(decoration: TextDecoration.lineThrough),
        ),
        TextSpan(text: " Planer"),
      ],
    ),
  );
}
