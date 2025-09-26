import 'package:dotted_border/dotted_border.dart';
import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CategoryTabsWidget extends StatefulWidget {
  const CategoryTabsWidget({super.key});

  @override
  State<CategoryTabsWidget> createState() => _CategoryTabsWidgetState();
}

class _CategoryTabsWidgetState extends State<CategoryTabsWidget> {
  final List<String> categoryItemList = ["Work", "Personal", "Home", "Office"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          // Add button
          GestureDetector(
            onTap: () {
              // Handle add category
            },
            child: DottedBorder(
              options: RoundedRectDottedBorderOptions(
                padding: EdgeInsets.symmetric(horizontal: 23, vertical: 4),
                radius: Radius.circular(16),
                dashPattern: [4, 4],
                color: AppColors.appGrayColor400,
              ),
              child: Icon(Iconsax.add),
            ),
          ),
          SizedBox(width: 8),
          // Category tabs
          Expanded(
            child: SizedBox(
              // Fixed height for tabs
              height: 32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryItemList.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.appSecondaryColor
                            : AppColors.appBackgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: isSelected
                              ? AppColors.appSecondaryColor
                              : AppColors.appGrayColor800,
                        ),
                      ),
                      child: Text(
                        categoryItemList[index],
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: isSelected
                              ? AppColors.appBackgroundColor
                              : AppColors.appGrayColor400,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
