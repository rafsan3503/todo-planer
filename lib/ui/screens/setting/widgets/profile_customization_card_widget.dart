import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileCustomizationCardWidget extends StatelessWidget {
  const ProfileCustomizationCardWidget({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
  });

  final Icon leadingIcon;
  final String title;
  final Icon trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.appTextInputBackground,
          ),
          child: leadingIcon,
        ),

        title: Text(title),
        trailing: trailingIcon,
      ),
    );
  }
}
