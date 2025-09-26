import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/task_details/widgets/task_properties_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TaskPropertiesWidget extends StatelessWidget {
  const TaskPropertiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> filteredTasks = [
      {"title": "Category", "icon": Icon(Iconsax.task), "property": "Home"},
      {
        "title": "Category",
        "icon": Icon(Iconsax.calendar5),
        "property": "Due Date",
      },
      {"title": "Category", "icon": Icon(Iconsax.clock), "property": "Time"},
      {
        "title": "Category",
        "icon": Icon(Iconsax.flag_25, color: AppColors.appRedColor),
        "property": "Priority",
      },
      {
        "title": "Notify Me",
        "icon": Icon(Iconsax.notification),
        "property": "Toggle",
      },
    ];
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: filteredTasks.length,
              itemBuilder: (context, index) => TaskPropertiesItemWidget(
                title: filteredTasks[index]["title"],
                icon: filteredTasks[index]["icon"],
                property: filteredTasks[index]["property"],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Text(
                "Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.appGrayColor400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
