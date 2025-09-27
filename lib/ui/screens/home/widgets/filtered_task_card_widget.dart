import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/sizes.dart';

import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/widgets/card_design.dart';
import 'package:feature_first_template/ui/screens/task_details/screens/task_details_screen.dart';
import 'package:flutter/material.dart';

class FilteredTaskCardWidget extends StatelessWidget {
  const FilteredTaskCardWidget({
    super.key,
    required this.futureTasks,
    required this.categoryTaskTitle,
  });

  final List<String> futureTasks;
  final String categoryTaskTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => DeviceUtility.navigateToPage(context, TaskDetailsScreen()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(AppSizes.defaultSize),
            child: Text(
              categoryTaskTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: futureTasks.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(bottom: AppSizes.sm),
                child: CardDesign(
                  leadingIcon: Icon(Icons.radio_button_off_outlined),
                  flagColor: AppColors.appRedColor,
                  cardTitle: "Doing housework",
                  cardSubTitle: "7,june,2023",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
