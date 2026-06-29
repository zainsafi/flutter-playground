// Main types of button in flutter
// elevated button
// elevated button .icon
// icon button
// text button
// outline button
// floating action button

import 'package:flutter/material.dart';
import 'package:project_21/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  void toggleTheme() {
    isDarkMode = !isDarkMode;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(isDarkMode: isDarkMode, toggleTheme: toggleTheme),
    );
  }
}
