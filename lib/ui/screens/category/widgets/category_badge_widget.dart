import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryBadgeWidget extends StatelessWidget {
  const CategoryBadgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(color: AppColors.appGrayColor800),
      child: Text(
        "Categories display on homepage",
        textAlign: TextAlign.center,
        style: Theme.of(
          context,
        ).textTheme.bodyLarge!.copyWith(color: AppColors.appGrayColor400),
      ),
    );
  }
}
