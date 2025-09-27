import 'package:feature_first_template/ui/screens/setting/widgets/footer_content_widget.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/profile_customization_widget.dart';

import 'package:feature_first_template/ui/screens/setting/widgets/setting_profile_card_widget.dart';
import 'package:flutter/material.dart';

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
          children: [SettingProfileCardWidget(), ProfileCustomizationWidget()],
        ),
      ),
    );
  }
}
