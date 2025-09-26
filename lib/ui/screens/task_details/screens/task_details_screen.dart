import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/task_details/widgets/delete_button_widget.dart';
import 'package:feature_first_template/ui/screens/task_details/widgets/task_description_widget.dart';
import 'package:feature_first_template/ui/screens/task_details/widgets/task_properties_widget.dart';
import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
        actions: [DeleteButtonWidget()],
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      body: Column(children: [TaskDescriptionWidget(), TaskPropertiesWidget()]),
    );
  }
}
