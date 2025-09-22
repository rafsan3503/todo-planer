import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/device.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingCardWidget extends StatelessWidget {
  const OnboardingCardWidget({
    super.key,
    required this.flagColor,
    required this.cardTitle,
    required this.cardSubTitle,
  });

  final Color flagColor;
  final String cardTitle;
  final String cardSubTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        height: AppDevice.onBoardingCardHeight,
        width: DeviceUtility.appDeviceWidth(context) * 0.95,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Icon(Iconsax.tick_circle4, color: AppColors.appPrimaryColor),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardTitle,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "7,june,2023",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.appGrayColor300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Iconsax.flag_25, color: flagColor),
          ],
        ),
      ),
    );
  }
}
