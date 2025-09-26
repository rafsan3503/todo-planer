import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/setting/widgets/footer_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FooterContentWidget extends StatelessWidget {
  const FooterContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Version: 0.10.10",
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: AppColors.appGrayColor400),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Divider(color: AppColors.appGrayColor300, height: 1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FooterItemWidget(
              icon: Icon(Iconsax.star, size: 24),
              title: "Rate Us",
            ),
            FooterItemWidget(
              icon: Icon(Iconsax.task, size: 24),
              title: "Policy",
            ),
            FooterItemWidget(
              icon: Icon(Iconsax.share, size: 24),
              title: "Share",
            ),
            FooterItemWidget(
              icon: Icon(Iconsax.more, size: 24),
              title: "More...",
            ),
          ],
        ),
      ],
    );
  }
}
