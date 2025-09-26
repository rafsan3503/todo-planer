import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/appbar_icon_widget.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/character_card_widget.dart';
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

      bottomNavigationBar: BottomAppBar(
        child: Text(
          "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.",
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: AppColors.appGrayColor400),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Full Name",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Container(
              width: double.infinity,
              height: 48,
              margin: EdgeInsets.symmetric(vertical: 16),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.appGrayColor400),
                borderRadius: BorderRadius.circular(39),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Mahmud Hasan",
                  border: InputBorder.none, // Removes the default border
                  focusedBorder:
                      InputBorder.none, // Removes the border when focused
                  enabledBorder:
                      InputBorder.none, // Removes the border when enabled
                  errorBorder: InputBorder
                      .none, // Removes the border when there's an error
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Character",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    CharacterCardWidget(icon: Icons.girl_outlined),
                    SizedBox(width: 16),
                    CharacterCardWidget(icon: Icons.boy_outlined),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
