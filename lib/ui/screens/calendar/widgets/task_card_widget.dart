import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TaskCardWidget extends StatelessWidget {
  const TaskCardWidget({
    super.key,
    required this.title,
    required this.flagColor,
  });

  final String title;
  final Color flagColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.appGrayColor800,
      ),
      child: ListTile(
        leading: Icon(Icons.radio_button_off),
        title: Text(title),
        trailing: Icon(Iconsax.flag_25, color: flagColor),
      ),
    );
  }
}
