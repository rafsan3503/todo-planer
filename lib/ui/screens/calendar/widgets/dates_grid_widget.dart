import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class DatesGridWidget extends StatelessWidget {
  const DatesGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> calendarDays = [
      28, 29, 30, 31, // Previous month
      1, 2, 3, 4, 5, 6, 7,
      8, 9, 10, 11, 12, 13, 14,
      15, 16, 17, 18, 19, 20, 21,
      22, 23, 24, 25, 26, 27, 28,
      29, 30, 31, // Current month
      1, 2, 3, 4, 5, 6, 7, // Next month
    ];
    return Expanded(
      child: GridView.builder(
        itemCount: calendarDays.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,

          crossAxisCount: 7,
        ),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 2),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: index < 3
                    ? AppColors.appGrayColor400
                    : AppColors.appWhiteColor,
              ),
            ),
            child: Text(
              calendarDays[index].toString(),
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: index < 3
                    ? AppColors.appGrayColor400
                    : AppColors.appWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ),
    );
  }
}
