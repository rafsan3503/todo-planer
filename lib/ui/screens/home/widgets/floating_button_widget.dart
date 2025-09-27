import 'package:feature_first_template/ui/screens/home/widgets/task_modal_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isDismissible: false,
          isScrollControlled: true,
          context: context,
          builder: (context) => Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: TaskModalWidget(),
          ),
        );
      },
      shape: CircleBorder(),
      elevation: 0,
      child: Icon(Iconsax.add),
    );
  }
}
