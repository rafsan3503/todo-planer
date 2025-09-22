import 'package:feature_first_template/ui/screens/splash/screens/splash_screen.dart';
import 'package:feature_first_template/core/theme/theme.dart';
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
      debugShowCheckedModeBanner: false,

      home: Scaffold(body: SplashScreen()),
    );
  }
}
