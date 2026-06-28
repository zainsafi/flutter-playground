/*
  In this project, we will build a complete login system with splash screen 
  and role-based navigation (Admin, Student, Teacher) using local storage.
  concepts covered:
  - Splash/Flash screen using Timer
  - SharedPreferences for local data storage
  - Login system with data saving and retrieval
  - Role-based navigation
  - Multiple screen navigation (Admin, Student, Teacher)
  - Logout functionality using data clearing
*/

import 'package:flutter/material.dart';
import 'package:project_19/flash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FlashScreen());
  }
}
