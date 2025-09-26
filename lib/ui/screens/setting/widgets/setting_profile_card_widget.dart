import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/device.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/screens/setting/screens/profile_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingProfileCardWidget extends StatelessWidget {
  const SettingProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        DeviceUtility.navigateToPage(context, ProfileEditScreen());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        height: AppDevice.onBoardingCardHeight,
        decoration: BoxDecoration(
          color: AppColors.appTextInputBackground,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.appPurpleColor,
                  ),
                  child: Icon(Iconsax.user),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mahmud Hsan",
                      style: Theme.of(context).textTheme.titleLarge,
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
          ],
        ),
      ),
    );
  }
}
