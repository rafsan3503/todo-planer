import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/calendar/widgets/task_card_widget.dart';

import 'package:flutter/material.dart';

class SelectedDateTasksWidget extends StatelessWidget {
  const SelectedDateTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = [
      "Do Groceries",
      "Buy Flowers",
      "Decorate Rooms",
      "Make a studying",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Your Task", style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) => TaskCardWidget(
              title: tasks[index],
              flagColor: AppColors.appGreenColor,
            ),
          ),
        ),
      ],
    );
  }
}
