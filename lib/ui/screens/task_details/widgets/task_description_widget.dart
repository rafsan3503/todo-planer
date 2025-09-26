import 'package:feature_first_template/core/utility/device_utility.dart';
import 'package:flutter/material.dart';

class TaskDescriptionWidget extends StatelessWidget {
  const TaskDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: DeviceUtility.appDeviceHeight(context) * 0.35,
      padding: EdgeInsets.only(top: 40, right: 25),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing",
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
      ),
    );
  }
}
