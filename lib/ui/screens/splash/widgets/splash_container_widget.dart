import 'package:feature_first_template/core/constants/image_strings.dart';
import 'package:feature_first_template/core/constants/text.dart';
import 'package:flutter/material.dart';

class SplashContainerWidget extends StatelessWidget {
  const SplashContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
