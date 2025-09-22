import 'package:feature_first_template/src/features/auth/view/screens/splash_screen.dart';
import 'package:feature_first_template/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Planner',
      themeMode: ThemeMode.dark,
      theme: AppThemeData.appDarkTheme,

      // theme: ThemeData.dark(),
      home: Scaffold(body: SplashScreen()),
    );
  }
}
