import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DeleteButtonWidget extends StatelessWidget {
  const DeleteButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              insetPadding: EdgeInsets.zero,

              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                height: 280,
                child: Column(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.appRedColor.withValues(alpha: 0.15),
                      ),
                      child: Icon(Iconsax.trash, color: AppColors.appRedColor),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Are you sure?",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Do you really want to delete this task? \nthis process can't be undone.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.appGrayColor400,
                      ),
                    ),
                    SizedBox(height: 26),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12,
                                  ),
                                ),
                              ),
                              child: Text("Cancel"),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.appRedColor,
                              ),
                              child: Text("Delete"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.appRedColor.withValues(alpha: 0.15),
        ),
        child: Icon(Iconsax.trash),
      ),
    );
  }
}
