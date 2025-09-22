import 'dart:async';

import 'package:feature_first_template/ui/screens/onboarding/screens/onboarding_screen.dart';
import 'package:feature_first_template/core/constants/image_strings.dart';
import 'package:feature_first_template/core/constants/text.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // Navigate to onboarding after delay
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
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headlineMedium,
              children: <TextSpan>[
                TextSpan(
                  text: AppText.splashLogoFirstText,
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                TextSpan(text: AppText.splashLogoSecondText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
