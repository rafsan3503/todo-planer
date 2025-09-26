import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EmptyCardWidget extends StatelessWidget {
  const EmptyCardWidget({super.key, this.tickIcon});
  final bool? tickIcon;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.5, vertical: 15),
        width: 176,

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tickIcon == null
                ? Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 0.81,
                        color: AppColors.appGrayColor400,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: AppColors.appGrayColor800,
                    ),
                  )
                : Icon(
                    Iconsax.tick_circle4,
                    color: AppColors.appPrimaryColor,
                    size: 15,
                  ),
            SizedBox(width: 7),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                    color: AppColors.appGrayColor400,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: 60,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                    color: AppColors.appGrayColor400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
