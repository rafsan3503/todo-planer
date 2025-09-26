import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/calendar/widgets/navigation_arrow_widget.dart';
import 'package:flutter/material.dart';

class DateNavigationBarWidget extends StatelessWidget {
  const DateNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Thursday",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.appGrayColor400,
              ),
            ),
            Text(
              "7 June, 2025",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        Row(
          children: [
            NavigationArrowWidget(icon: Icons.arrow_back_ios_new_outlined),
            SizedBox(width: 16),
            NavigationArrowWidget(icon: Icons.arrow_forward_ios_outlined),
          ],
        ),
      ],
    );
  }
}
