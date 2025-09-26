import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/ui/screens/search/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 8, top: 8, bottom: 8),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        border: BoxBorder.all(width: 1, color: AppColors.appInputBorder),
        borderRadius: BorderRadius.all(Radius.circular(39)),
      ),
      child: GestureDetector(
        onTap: () {
          DeviceUtility.navigateToPage(context, SearchScreen());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Iconsax.search_normal),
                SizedBox(width: 12),
                Text(
                  "Try to find task....",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.appGrayColor400,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Search",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
