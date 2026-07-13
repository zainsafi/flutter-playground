import 'package:flutter/material.dart';
import 'package:project_27/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),

        // App bar theme
        appBarTheme: AppBarThemeData(backgroundColor: Colors.white),

        // scaffold theme
        scaffoldBackgroundColor: Colors.white,

        // card them
        cardTheme: CardThemeData(color: Colors.white),

        inputDecorationTheme: InputDecorationThemeData(
          hintStyle: TextStyle(color: Colors.grey.shade500),
          prefixIconColor: Colors.grey.shade500,
          suffixIconColor: Colors.grey.shade500,
        ),
        // list tile theme
        listTileTheme: ListTileThemeData(tileColor: Colors.white),
      ),

      darkTheme: ThemeData.dark(),

      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
