import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/text.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:flutter/material.dart';

class SignupGuideWidget extends StatelessWidget {
  const SignupGuideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: DeviceUtility.appDeviceHeight(context) * 0.05,
      ),
      child: Column(
        children: <Widget>[
          Text(
            AppText.signUpQuestion,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 10),
          Text(
            AppText.signUpGuide,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: AppColors.appGrayColor300),
          ),
        ],
      ),
    );
  }
}
