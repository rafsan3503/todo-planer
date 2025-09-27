import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/ui/screens/search/widgets/search_box_widget.dart';
import 'package:feature_first_template/ui/widgets/card_design.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> matchedTasks = [
      {
        "icon": Icons.check_circle_outlined,
        "flagColor": AppColors.appRedColor,
        "cardTitle": "Doing Homework",
        "cardSubtitle": "7 June, 2025",
      },
      {
        "icon": Icons.check_circle_outlined,
        "flagColor": AppColors.appRedColor,
        "cardTitle": "Doing Homework",
        "cardSubtitle": "7 June, 2025",
      },
      {
        "icon": Icons.check_circle_outlined,
        "flagColor": AppColors.appRedColor,
        "cardTitle": "Doing Homework",
        "cardSubtitle": "7 June, 2025",
      },
      {
        "icon": Icons.check_circle_outlined,
        "flagColor": AppColors.appRedColor,
        "cardTitle": "Doing Homework",
        "cardSubtitle": "7 June, 2025",
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSize),
              child: SearchBoxWidget(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: matchedTasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: AppSizes.sm),
                    child: CardDesign(
                      leadingIcon: Icon(
                        matchedTasks[index]["icon"],
                        color: AppColors.appPrimaryColor,
                      ),
                      flagColor: matchedTasks[index]["flagColor"],
                      cardTitle: matchedTasks[index]["cardTitle"],
                      cardSubTitle: matchedTasks[index]["cardSubtitle"],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
