import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1, color: AppColors.appGrayColor300),
      ),
      child: Row(
        children: [
          Icon(Iconsax.search_normal),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          SizedBox(width: 8),
          Icon(Icons.close),
        ],
      ),
    );
  }
}
