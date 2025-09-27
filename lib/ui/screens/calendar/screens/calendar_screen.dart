import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/ui/screens/calendar/widgets/calendar_dates_widget.dart';
import 'package:feature_first_template/ui/screens/calendar/widgets/selected_date_tasks_widget.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Expanded(child: CalendarDatesWidget()),
              SizedBox(height: AppSizes.defaultSize),
              SizedBox(height: 300, child: SelectedDateTasksWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
