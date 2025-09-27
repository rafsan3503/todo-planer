import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/device.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({
    super.key,
    required this.flagColor,
    required this.cardTitle,
    required this.cardSubTitle,
    required this.leadingIcon,
  });

  final Icon leadingIcon;
  final Color flagColor;
  final String cardTitle;
  final String cardSubTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      elevation: 8.0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        height: AppDevice.onBoardingCardHeight,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                leadingIcon,
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
