import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class WeeksBarWidget extends StatelessWidget {
  const WeeksBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> weeks = ["M", "T", "W", "T", "F", "S", "S"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...weeks.map((week) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 16),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: week == "T"
                  ? AppColors.appSecondaryColor
                  : AppColors.appWhiteColor,
            ),
            child: Text(
              week,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.appBackgroundColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        }),
      ],
    );
  }
}
