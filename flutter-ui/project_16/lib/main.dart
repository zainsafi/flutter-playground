/*
  In this project, we will implement navigation between multiple screens 
  using named routes.
  Concepts covered:
  - Named routes
  - Navigator.pushNamed()
  - Navigator.pushReplacementNamed()
  - Navigator.pop()
  - initialRoute
  - Drawer
*/
import 'package:flutter/material.dart';
import 'package:project_16/home_screen.dart';
import 'package:project_16/screen_one.dart';
import 'package:project_16/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenOne.id: (context) => ScreenOne(),
        ScreenTwo.id: (context) => ScreenTwo(),
      },
      //When we are using routes we can't use home
      // home: HomeScreen()
    );
  }
}
