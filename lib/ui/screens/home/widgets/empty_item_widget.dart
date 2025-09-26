import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/home/widgets/empty_card_widget.dart';
import 'package:flutter/material.dart';

class EmptyItemWidget extends StatelessWidget {
  const EmptyItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmptyCardWidget(),
            Container(
              margin: EdgeInsets.only(left: 55, top: 12, bottom: 12),
              child: EmptyCardWidget(tickIcon: true),
            ),
            EmptyCardWidget(),
            Padding(
              padding: EdgeInsetsGeometry.only(top: 42),
              child: Column(
                children: [
                  Text(
                    "Your task box is empty.",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Once your create new task you’ll \n see it listed here",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.appGrayColor300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
