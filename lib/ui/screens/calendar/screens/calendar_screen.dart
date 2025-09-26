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
              SizedBox(
                width: double.infinity,
                height: 400,
                child: CalendarDatesWidget(),
              ),
              SizedBox(height: 16),
              Expanded(child: SelectedDateTasksWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
