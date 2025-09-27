import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/appbar_icon_widget.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/bottom_app_bar_widget.dart';

import 'package:feature_first_template/ui/screens/setting/widgets/character_selection_widget.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/profile_edit_input_widget.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        actions: [AppbarIconWidget(icon: Icon(Icons.check))],
      ),

      bottomNavigationBar: BottomAppBarWidget(),

      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Full Name",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ProfileEditInputWidget(),
            SizedBox(height: 12),
            CharacterSelectionWidget(),
          ],
        ),
      ),
    );
  }
}
