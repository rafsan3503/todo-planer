import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/core/constants/text.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/terms_policy_text_widget.dart';
import 'package:feature_first_template/ui/screens/signup/screens/username_input_screen.dart';
import 'package:flutter/material.dart';

class OnboardingBottomContainerWidget extends StatelessWidget {
  const OnboardingBottomContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      top: DeviceUtility.appDeviceHeight(context) * 0.65,

      child: Column(
        children: [
          Text(
            AppText.onBoardingHeadline,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSizes.md * 2),
          SizedBox(
            width: DeviceUtility.appDeviceWidth(context) * 0.9,
            height: AppSizes.xxl * 2,

            child: ElevatedButton(
              onPressed: () =>
                  DeviceUtility.navigateToPage(context, UsernameInputScreen()),
              child: Text(
                AppText.onBoardingButtonText,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          SizedBox(height: AppSizes.md * 2),
          TermsPolicyTextWidget(),
        ],
      ),
    );
  }
}
