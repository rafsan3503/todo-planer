import 'dart:async';

import 'package:feature_first_template/src/features/auth/view/screens/onboarding_screen.dart';
import 'package:feature_first_template/src/utils/constants/image_strings.dart';
import 'package:feature_first_template/src/utils/constants/text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => OnboardingScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(AppImageStrings.splashScreenLogo)),
          AppText.splashLogoText,
        ],
      ),
    );
  }
}
