import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/onboarding_card_widget.dart';
import 'package:feature_first_template/ui/screens/search/widgets/search_box_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SearchBoxWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    OnboardingCardWidget(
                      flagColor: AppColors.appRedColor,
                      cardTitle: "Doing Homework",
                      cardSubTitle: "7 June, 2025",
                    ),

                    OnboardingCardWidget(
                      flagColor: AppColors.appRedColor,
                      cardTitle: "Make a studying plan",
                      cardSubTitle: "7 June, 2025",
                    ),
                    OnboardingCardWidget(
                      flagColor: AppColors.appRedColor,
                      cardTitle: "Do Groceries",
                      cardSubTitle: "7 June, 2025",
                    ),
                    OnboardingCardWidget(
                      flagColor: AppColors.appRedColor,
                      cardTitle: "Doing Homework",
                      cardSubTitle: "7 June, 2025",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
