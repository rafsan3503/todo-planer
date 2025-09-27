import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class CharacterCardWidget extends StatelessWidget {
  const CharacterCardWidget({
    super.key,
    required this.icon,
    required this.name,
  });

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.appPurpleColor,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 48),
        ),
        SizedBox(height: AppSizes.sm),
        Text(name, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
