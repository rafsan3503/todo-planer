import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/screens/setting/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingIcon extends StatelessWidget {
  const SettingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        DeviceUtility.navigateToPage(context, SettingScreen());
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: BoxBorder.all(width: 1, color: AppColors.appInputBorder),
          shape: BoxShape.circle,
        ),
        child: Icon(Iconsax.setting_24),
      ),
    );
  }
}
