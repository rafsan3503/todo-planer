import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/graph/widget/bar_chart_widget.dart';
import 'package:feature_first_template/ui/screens/graph/widget/task_report_widget.dart';
import 'package:feature_first_template/ui/widgets/setting_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph"),
        automaticallyImplyLeading: false,
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        actions: [SettingIcon()],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: AppColors.appGrayColor800,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Completed Task",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppColors.appTextInputBackground,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                "This Week",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(width: 6),
                              Icon(Iconsax.arrow_down_14),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),
                  Container(
                    height: 250,
                    padding: EdgeInsets.symmetric(vertical: 16),

                    // Explicit height for chart
                    child: BarChartWidget(),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TaskReportWidget(title: "Completed Tasks"),
                SizedBox(width: 16),
                TaskReportWidget(title: "Pending Tasks"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
