import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/ui/screens/onboarding/widgets/terms_policy_text_item_widget.dart';

import 'package:feature_first_template/core/constants/text.dart';

import 'package:flutter/material.dart';

class TermsPolicyTextWidget extends StatelessWidget {
  const TermsPolicyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TermsPolicyTextItemWidget(
          lineText: AppText.termsLineText,
          linkText: AppText.termsLinkText,
        ),
        SizedBox(height: AppSizes.sm),
        TermsPolicyTextItemWidget(
          lineText: AppText.policyLineText,
          linkText: AppText.policyLinkText,
        ),
      ],
    );
  }
}
