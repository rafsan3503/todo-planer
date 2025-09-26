import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class NavbarTitleWidget extends StatelessWidget {
  const NavbarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Text('Mahmud Hasan'),
        Positioned(
          right: -20,
          top: -5,

          child: Transform.rotate(
            angle: 0.25726,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              decoration: BoxDecoration(
                color: AppColors.appSecondaryColor,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Text(
                "to-do",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 14,
                  color: AppColors.appBottomBackground,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
