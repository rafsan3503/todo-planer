import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class NavigationArrowWidget extends StatelessWidget {
  const NavigationArrowWidget({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: AppColors.appGrayColor300),
      ),

      child: Icon(icon),
    );
  }
}
