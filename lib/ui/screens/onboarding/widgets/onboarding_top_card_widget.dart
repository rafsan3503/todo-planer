import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/text.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/widgets/card_design.dart';
import 'package:flutter/material.dart';

class OnboardingTopCardWidget extends StatelessWidget {
  const OnboardingTopCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      top: DeviceUtility.appDeviceHeight(context) * 0.41,
      child: Transform(
        transform: Matrix4.rotationZ(0.0191986),
        child: CardDesign(
          leadingIcon: Icon(
            Icons.check_circle_rounded,
            color: AppColors.appPrimaryColor,
          ),
          flagColor: AppColors.appRedColor,
          cardTitle: AppText.onBoardingCardTitle1,
          cardSubTitle: AppText.onBoardingCardSubTitle,
        ),
      ),
    );
  }
}
