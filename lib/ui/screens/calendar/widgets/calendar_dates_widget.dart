import 'package:feature_first_template/ui/screens/calendar/widgets/date_navigation_bar_widget.dart';
import 'package:feature_first_template/ui/screens/calendar/widgets/dates_grid_widget.dart';
import 'package:feature_first_template/ui/screens/calendar/widgets/weeks_bar_widget.dart';
import 'package:flutter/material.dart';

class CalendarDatesWidget extends StatelessWidget {
  const CalendarDatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DateNavigationBarWidget(),
        WeeksBarWidget(),

        DatesGridWidget(),
      ],
    );
  }
}
