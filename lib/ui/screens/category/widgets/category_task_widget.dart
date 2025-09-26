import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CategoryTaskWidget extends StatelessWidget {
  const CategoryTaskWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.appGrayColor800,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(Icons.drag_indicator_outlined),
        title: Text(title),
        subtitle: Text(
          subtitle,
          style: Theme.of(
            context,
          ).textTheme.bodySmall!.copyWith(color: AppColors.appSecondaryColor),
        ),
        trailing: PopupMenuButton(
          icon: Icon(CupertinoIcons.ellipsis),
          position: PopupMenuPosition.under,
          color: AppColors.appGrayColor800,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Iconsax.edit),
                    SizedBox(width: 6),
                    Text("Edit"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Iconsax.trash, color: AppColors.appRedColor),
                    SizedBox(width: 6),
                    Text(
                      "Edit",
                      style: TextStyle(color: AppColors.appRedColor),
                    ),
                  ],
                ),
              ),
            ];
          },
        ),
      ),
    );
  }
}
