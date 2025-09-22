import 'package:feature_first_template/core/constants/device.dart';
import 'package:feature_first_template/core/constants/image_strings.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardingAvatarContainerWidget extends StatelessWidget {
  const OnboardingAvatarContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: DeviceUtility.appDeviceHeight(context) * 0.1,
      ),

      child: Image.asset(
        AppImageStrings.onboardingBackground,
        width: AppDevice.deviceFullWidth,
        height: DeviceUtility.appDeviceHeight(context) * 0.5,
        fit: BoxFit.cover,
        scale: 2,
      ),
    );
  }
}
