import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TaskReportWidget extends StatelessWidget {
  const TaskReportWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.appGrayColor800,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(fontSize: 32),
            ),
            SizedBox(height: 6),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: AppColors.appGrayColor400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
