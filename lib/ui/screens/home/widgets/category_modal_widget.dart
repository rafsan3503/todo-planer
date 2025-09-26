import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryModalWidget extends StatelessWidget {
  const CategoryModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.appGrayColor800,
              border: Border.all(
                color: AppColors.appTextInputBackground,
                width: 4,
              ),
            ),
            child: Icon(Icons.close, size: 32),
          ),
        ),
        Container(
          width: double.infinity, // Full width
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10), // Custom padding
          decoration: BoxDecoration(
            color: AppColors.appGrayColor800,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity, // Custom width
                padding: EdgeInsets.symmetric(horizontal: 18),
                height: 56, // Custom height
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
              ),
              SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add New Task"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
