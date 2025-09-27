import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_avatar_widget.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_bottom_card_widget.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_bottom_container_widget.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_top_card_widget.dart';

import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_avatar_container_widget.dart';

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingAvatarContainerWidget(),

        OnboardingAvatarWidget(),
        OnBoardingBottomCardWidget(),
        OnboardingTopCardWidget(),

        OnboardingBottomContainerWidget(),
      ],
    );
  }
}
