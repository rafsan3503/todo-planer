import 'package:feature_first_template/ui/screens/category/widgets/category_task_widget.dart';
import 'package:flutter/material.dart';

class ManageCategoriesWidget extends StatelessWidget {
  const ManageCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Manage Categories",

            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 16),
          CategoryTaskWidget(title: "👜 Office Work", subtitle: "5/7 task"),
          CategoryTaskWidget(title: "😎 Personal Task", subtitle: "5/7 task"),
          CategoryTaskWidget(title: "❤️ Wishlist", subtitle: "5/7 task"),
          CategoryTaskWidget(title: "🎂 Birthday plan", subtitle: "5/7 task"),
        ],
      ),
    );
  }
}
