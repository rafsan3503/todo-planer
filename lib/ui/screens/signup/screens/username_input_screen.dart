import 'package:feature_first_template/ui/screens/signup/widgets/signup_button_widget.dart';
import 'package:feature_first_template/ui/screens/signup/widgets/signup_guide_widget.dart';
import 'package:feature_first_template/ui/screens/signup/widgets/signup_input_widget.dart';
import 'package:flutter/material.dart';

class UsernameInputScreen extends StatelessWidget {
  const UsernameInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignupGuideWidget(),
              SignupInputWidget(),
              SignupButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
