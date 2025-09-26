import 'package:feature_first_template/ui/screens/calendar/screens/calendar_screen.dart';
import 'package:feature_first_template/ui/screens/category/screens/category_screen.dart';
import 'package:feature_first_template/ui/screens/graph/screen/graph_screen.dart';
import 'package:feature_first_template/ui/screens/home/screens/dashboard.dart';

import 'package:feature_first_template/ui/screens/home/widgets/bottom_app_bar_widget.dart';

import 'package:feature_first_template/ui/screens/home/widgets/task_modal_widget.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  void setIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> screens = [
    Dashboard(),
    CalendarScreen(),
    CategoryScreen(),
    GraphScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBarWidget(
        setIndex: setIndex,
        currentIndex: selectedIndex,
      ),
      floatingActionButton: FloatingActionButton(
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedIndex],
    );
  }
}
