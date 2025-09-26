import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/ui/screens/home/widgets/bottom_app_bar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({
    super.key,
    required this.setIndex,
    required this.currentIndex,
  });

  final void Function(int) setIndex;
  final int currentIndex;

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.appBottomBackground,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomAppBarItemWidget(
            index: 0,
            setIndex: widget.setIndex,
            menuIcon: Iconsax.home,
            menuTitle: "Home",
            currentIndex: widget.currentIndex,
          ),
          BottomAppBarItemWidget(
            index: 1,
            setIndex: widget.setIndex,
            menuIcon: Iconsax.calendar_15,
            menuTitle: "Calendar",
            currentIndex: widget.currentIndex,
          ),
          SizedBox(height: 16),
          BottomAppBarItemWidget(
            index: 2,
            setIndex: widget.setIndex,
            menuIcon: Iconsax.task,
            menuTitle: "Category",
            currentIndex: widget.currentIndex,
          ),
          BottomAppBarItemWidget(
            index: 3,
            setIndex: widget.setIndex,
            menuIcon: Iconsax.graph,
            menuTitle: "Graph",
            currentIndex: widget.currentIndex,
          ),
        ],
      ),
    );
  }
}
