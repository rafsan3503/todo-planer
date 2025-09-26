import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class TaskInputFieldWidget extends StatelessWidget {
  const TaskInputFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Custom width
      padding: EdgeInsets.symmetric(horizontal: 18),
      height: 120.0, // Custom height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.appTextInputBackground,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none, // Remove default TextField border
          // Adjust padding within the Container
          hintText: 'Input new task here....',
          hintStyle: TextStyle(color: AppColors.appGrayColor300),
        ),
      ),
    );
  }
}
