import 'dart:async';
import 'package:flutter/material.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/screens/onboarding/screens/onboarding_screen.dart';
import 'package:feature_first_template/ui/screens/splash/widgets/Splash_container_widget.dart';

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
      () => DeviceUtility.navigateToPage(context, OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: SplashContainerWidget());
  }
}
