import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class FooterItemWidget extends StatelessWidget {
  const FooterItemWidget({super.key, required this.icon, required this.title});

  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          margin: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: AppColors.appPurpleColor),
          ),
          child: icon,
        ),
        Text(title, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
