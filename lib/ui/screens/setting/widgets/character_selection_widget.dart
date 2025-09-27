import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/character_card_widget.dart';
import 'package:flutter/material.dart';

class CharacterSelectionWidget extends StatelessWidget {
  const CharacterSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Character", style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: AppSizes.defaultSize),
        Row(
          children: [
            CharacterCardWidget(icon: Icons.girl_outlined, name: "Female"),
            SizedBox(width: AppSizes.defaultSize),
            CharacterCardWidget(icon: Icons.boy_outlined, name: "Male"),
          ],
        ),
      ],
    );
  }
}
