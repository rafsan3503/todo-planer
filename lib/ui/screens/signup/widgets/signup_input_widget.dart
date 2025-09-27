import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/text.dart';
import 'package:feature_first_template/core/theme/custom_themes/text_theme.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:flutter/material.dart';

class SignupInputWidget extends StatelessWidget {
  const SignupInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceUtility.appDeviceWidth(context) * 0.50,
      child: TextField(
        textAlign: TextAlign.center,
        style: AppTextTheme.appTextTheme.headlineMedium,
        decoration: InputDecoration(
          hintText: AppText.signUpInput,
          hintStyle: AppTextTheme.appTextTheme.headlineMedium!.copyWith(
            color: AppColors.appGrayColor300,
          ),
        ),
      ),
    );
  }
}
