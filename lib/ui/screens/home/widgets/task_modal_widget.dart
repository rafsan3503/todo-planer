import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/home/widgets/category_modal_widget.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TaskModalWidget extends StatelessWidget {
  const TaskModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
                    height: 120.0, // Custom height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.appTextInputBackground,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border:
                            InputBorder.none, // Remove default TextField border
                        // Adjust padding within the Container
                        hintText: 'Input new task here....',
                        hintStyle: TextStyle(color: AppColors.appGrayColor300),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppColors.appTextInputBackground,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            showModalBottomSheet(
                              backgroundColor: AppColors.appTransparentColor,
                              isDismissible: false,
                              isScrollControlled: true,
                              context: context,
                              builder: (context) => Padding(
                                padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(
                                    context,
                                  ).viewInsets.bottom,
                                ),
                                child: CategoryModalWidget(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Personal",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(width: 6),
                              Icon(Iconsax.arrow_down_14),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.appTextInputBackground,
                        ),
                        child: Row(children: [Icon(Iconsax.calendar5)]),
                      ),
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.appTextInputBackground,
                        ),
                        child: Row(
                          children: [
                            Icon(Iconsax.flag_25, color: AppColors.appRedColor),
                          ],
                        ),
                      ),
                    ],
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
        ),
      ],
    );
  }
}
