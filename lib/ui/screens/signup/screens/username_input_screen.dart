import 'package:feature_first_template/core/constants/colors.dart';

import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:feature_first_template/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class UsernameInputScreen extends StatelessWidget {
  const UsernameInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: DeviceUtility.appDeviceHeight(context) * 0.05,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "What is your name?",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Please provide your name, which we'll use for \n display and personalize your to-do experience.",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.appGrayColor300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: DeviceUtility.appDeviceWidth(context) * 0.45,
                child: TextField(
                  style: AppTextTheme.appTextTheme.headlineMedium,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle: AppTextTheme.appTextTheme.headlineMedium!
                        .copyWith(color: AppColors.appGrayColor300),
                  ),
                ),
              ),
              SizedBox(
                width: DeviceUtility.appDeviceWidth(context) * 0.85,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Get Start"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
