import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/home/widgets/category_tabs_widget.dart';
import 'package:feature_first_template/ui/screens/home/widgets/empty_item_widget.dart';
import 'package:feature_first_template/ui/screens/home/widgets/home_tasks_screen.dart';
import 'package:feature_first_template/ui/screens/home/widgets/navbar_title_widget.dart';
import 'package:feature_first_template/ui/screens/home/widgets/search_widget.dart';
import 'package:feature_first_template/ui/widgets/setting_icon.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = ["Item"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,

        title: NavbarTitleWidget(),
        automaticallyImplyLeading: false,
        actions: [SettingIcon()],
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      body: Column(
        children: [
          SearchWidget(),
          CategoryTabsWidget(),
          tasks.isEmpty ? EmptyItemWidget() : HomeTasksScreen(),
        ],
      ),
    );
  }
}
