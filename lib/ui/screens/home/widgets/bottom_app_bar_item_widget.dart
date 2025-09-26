import 'package:feature_first_template/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomAppBarItemWidget extends StatefulWidget {
  const BottomAppBarItemWidget({
    super.key,
    required this.index,
    required this.setIndex,
    required this.menuIcon,
    required this.menuTitle,
    required this.currentIndex,
  });

  final int index;
  final void Function(int) setIndex;
  final IconData menuIcon;
  final String menuTitle;
  final int currentIndex;

  @override
  State<BottomAppBarItemWidget> createState() => _BottomAppBarItemWidgetState();
}

class _BottomAppBarItemWidgetState extends State<BottomAppBarItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(widget.index);
      },
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: widget.currentIndex == widget.index
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2, color: AppColors.yellow),
                ),
              )
            : BoxDecoration(),
        child: Column(
          children: [
            Icon(
              widget.menuIcon,
              color: widget.currentIndex == widget.index
                  ? AppColors.appWhiteColor
                  : AppColors.appGrayColor400,
            ),
            SizedBox(height: 4),
            Text(
              widget.menuTitle,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: widget.currentIndex == widget.index
                    ? AppColors.appWhiteColor
                    : AppColors.appGrayColor400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
