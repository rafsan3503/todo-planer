import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TermsPolicyTextItemWidget extends StatelessWidget {
  const TermsPolicyTextItemWidget({
    super.key,
    required this.lineText,
    required this.linkText,
  });

  final String lineText;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppTextTheme.appTextTheme.bodySmall!.copyWith(
          color: AppColors.appGrayColor400,
        ),
        children: [
          TextSpan(text: lineText),
          TextSpan(
            text: linkText,
            style: TextStyle(
              color: AppColors.appWhiteColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
