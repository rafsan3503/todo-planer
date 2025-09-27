import 'package:feature_first_template/ui/screens/home/widgets/filtered_task_card_widget.dart';

import 'package:flutter/material.dart';

class HomeTasksScreen extends StatefulWidget {
  const HomeTasksScreen({super.key});

  @override
  State<HomeTasksScreen> createState() => _HomeTasksScreenState();
}

class _HomeTasksScreenState extends State<HomeTasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableHeight = constraints.maxHeight;
          return Column(
            children: [
              SizedBox(
                height: availableHeight * 0.4,

                child: FilteredTaskCardWidget(
                  futureTasks: ["one", "two", "Three"],
                  categoryTaskTitle: "Future",
                ),
              ),
              SizedBox(
                height: availableHeight * 0.6,

                child: FilteredTaskCardWidget(
                  futureTasks: ["one", "two", "Three", "four", "five"],
                  categoryTaskTitle: "Today Task",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
