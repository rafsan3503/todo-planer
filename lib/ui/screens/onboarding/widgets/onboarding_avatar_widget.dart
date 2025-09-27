import 'package:feature_first_template/core/constants/image_strings.dart';
import 'package:flutter/material.dart';

class OnboardingAvatarWidget extends StatelessWidget {
  const OnboardingAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,

      child: Image.asset(AppImageStrings.onboardingAvatar),
    );
  }
}
