import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TaskPropertiesItemWidget extends StatelessWidget {
  const TaskPropertiesItemWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.property,
  });

  final String title;
  final Icon icon;
  final String property;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.appGrayColor800,
      ),
      child: ListTile(
        leading: icon,
        title: Text(title),
        trailing: Container(
          padding: property == "Toggle"
              ? EdgeInsets.all(0)
              : EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.appTextInputBackground,
          ),
          child: property == "Toggle"
              ? Icon(
                  Iconsax.toggle_on_circle4,
                  color: AppColors.appGreenColor,
                  size: 42,
                )
              : Text(property, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ),
    );
  }
}
