import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AppbarIconWidget extends StatelessWidget {
  const AppbarIconWidget({super.key, required this.icon});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1.5, color: AppColors.appGrayColor400),
      ),
      child: icon,
    );
  }
}
