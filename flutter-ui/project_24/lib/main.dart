// Flutter ColorScheme and colorScheme.fromSeed()Learning Project
//  ColorScheme provides a set of semantic color roles for an
//   application instead of using individual colors everywhere.

// Material widgets: These generally have built-in Material theming e.g
// Card, ElevatedButton, FilledButton, OutlinedButton, TextButton, AppBar,
// NavigationBar, Dialog, Checkbox, Radio, Switch, Slider, TextField.
// They can use your ThemeData and ColorScheme automatically.
// you can also change or set it manually

// Generic widgets: These don't automatically decide which ColorScheme
// role you want. e.g
// Container, SizedBox, Padding, Row, Column, Center, Stack, Expanded

// Here in this project we will be not focusing on design

import 'package:flutter/material.dart';
import 'package:project_24/home_screen.dart';

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
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.light,
    ),
  );

  ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.dark,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,

      darkTheme: darkTheme,

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomeScreen(toggleTheme: toggleTheme),
    );
  }
}
