import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.appPurpleColor,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 48),
    );
  }
}
