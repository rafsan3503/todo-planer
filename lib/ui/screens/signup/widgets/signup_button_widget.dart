import 'package:feature_first_template/core/constants/text.dart';
import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/screens/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SignupButtonWidget extends StatelessWidget {
  const SignupButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.lg * 2),
      child: SizedBox(
        width: DeviceUtility.appDeviceWidth(context) * 0.75,
        height: AppSizes.xxl * 2,
        child: ElevatedButton(
          onPressed: () {
            DeviceUtility.navigateToPage(context, HomeScreen());
          },
          child: Text(
            AppText.onBoardingButtonText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
