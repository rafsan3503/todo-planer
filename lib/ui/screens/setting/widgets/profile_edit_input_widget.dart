import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileEditInputWidget extends StatelessWidget {
  const ProfileEditInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.appGrayColor400),
        borderRadius: BorderRadius.circular(39),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Mahmud Hasan",
          border: InputBorder.none, // Removes the default border
          focusedBorder: InputBorder.none, // Removes the border when focused
          enabledBorder: InputBorder.none, // Removes the border when enabled
          errorBorder:
              InputBorder.none, // Removes the border when there's an error
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
