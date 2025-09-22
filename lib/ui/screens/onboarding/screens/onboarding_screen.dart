import 'package:feature_first_template/ui/screens/signup/screens/username_input_screen.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_avatar_container_widget.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_card_widget.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/terms_policy_text_widget.dart';
import 'package:feature_first_template/core/constants/colors.dart';

import 'package:feature_first_template/core/constants/image_strings.dart';
import 'package:feature_first_template/core/constants/text.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingAvatarContainerWidget(),

        Positioned(
          left: 0.0,
          right: 0.0,
          top: DeviceUtility.appDeviceHeight(context) * 0.05,
          child: Image.asset(AppImageStrings.onboardingAvatar),
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          top: DeviceUtility.appDeviceHeight(context) * 0.53,
          child: Transform(
            transform: Matrix4.rotationZ(-0.05),
            child: OnboardingCardWidget(
              flagColor: AppColors.appGreenColor,
              cardTitle: AppText.onBoardingCardTitle2,
              cardSubTitle: AppText.onBoardingCardSubTitle,
            ),
          ),
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          top: DeviceUtility.appDeviceHeight(context) * 0.43,
          child: OnboardingCardWidget(
            flagColor: AppColors.appRedColor,
            cardTitle: AppText.onBoardingCardTitle1,
            cardSubTitle: AppText.onBoardingCardSubTitle,
          ),
        ),

        Positioned(
          left: 0.0,
          right: 0.0,
          top: DeviceUtility.appDeviceHeight(context) * 0.65,

          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                AppText.onBoardingHeadline,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: DeviceUtility.appDeviceWidth(context) * 0.9,
                height: 48,

                child: ElevatedButton(
                  onPressed: () => DeviceUtility.navigateToPage(
                    context,
                    UsernameInputScreen(),
                  ),
                  child: Text("Get Started"),
                ),
              ),
              SizedBox(height: 20),
              TermsPolicyTextWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
