import 'package:feature_first_template/core/constants/colors.dart';

import 'package:feature_first_template/ui/screens/setting/widgets/footer_content_widget.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/profile_customization_card_widget.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/setting_profile_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting", style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 180,
        child: FooterContentWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            SettingProfileCardWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Customization",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  ProfileCustomizationCardWidget(
                    leadingIcon: Icon(Iconsax.edit),
                    title: "Edit your profile",
                    trailingIcon: Icon(Icons.arrow_forward_ios),
                  ),
                  ProfileCustomizationCardWidget(
                    leadingIcon: Icon(Icons.notification_important_outlined),
                    title: "Notification",
                    trailingIcon: Icon(
                      Icons.toggle_off_outlined,
                      color: AppColors.appGreenColor,
                      size: 42,
                    ),
                  ),
                  ProfileCustomizationCardWidget(
                    leadingIcon: Icon(Iconsax.import),
                    title: "Import Data",
                    trailingIcon: Icon(Icons.arrow_forward_ios),
                  ),
                  ProfileCustomizationCardWidget(
                    leadingIcon: Icon(Iconsax.export),
                    title: "Export Data",
                    trailingIcon: Icon(Icons.arrow_forward_ios),
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
