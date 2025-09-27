import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Text(
        "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.",
        textAlign: TextAlign.center,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(color: AppColors.appGrayColor400),
      ),
    );
  }
}
