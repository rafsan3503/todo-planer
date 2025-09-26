import 'package:feature_first_template/ui/screens/category/widgets/category_badge_widget.dart';
import 'package:feature_first_template/ui/screens/category/widgets/create_category_widget.dart';
import 'package:feature_first_template/ui/screens/category/widgets/manage_categories_widget.dart';
import 'package:feature_first_template/ui/widgets/setting_icon.dart';

import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        automaticallyImplyLeading: false,
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        actions: [SettingIcon()],
      ),
      body: Column(
        children: [
          CategoryBadgeWidget(),
          ManageCategoriesWidget(),
          CreateCategoryWidget(),
        ],
      ),
    );
  }
}
