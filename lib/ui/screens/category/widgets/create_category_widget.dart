import 'package:dotted_border/dotted_border.dart';
import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateCategoryWidget extends StatelessWidget {
  const CreateCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          radius: Radius.circular(16),
          color: AppColors.appGrayColor400,
          dashPattern: [5, 5],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Iconsax.add, color: AppColors.appGrayColor400),
              SizedBox(width: 12),
              Text(
                "Create new category",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.appGrayColor400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
