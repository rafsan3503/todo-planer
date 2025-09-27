import 'package:feature_first_template/ui/screens/calendar/screens/calendar_screen.dart';
import 'package:feature_first_template/ui/screens/category/screens/category_screen.dart';
import 'package:feature_first_template/ui/screens/graph/screen/graph_screen.dart';
import 'package:feature_first_template/ui/screens/home/screens/dashboard.dart';

import 'package:feature_first_template/ui/screens/home/widgets/bottom_app_bar_widget.dart';
import 'package:feature_first_template/ui/screens/home/widgets/floating_button_widget.dart';

import 'package:flutter/material.dart';

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
      floatingActionButton: FloatingButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedIndex],
    );
  }
}
