/*
  In this project, we will explore asynchronous programming using 
  FutureBuilder and StreamBuilder to handle delayed and continuous data.

  Concepts covered:
  - Future for one-time asynchronous operations
  - Stream for continuous data flow
  - FutureBuilder to handle async data in UI
  - StreamBuilder to listen to live data updates
  - Async & await with Future.delayed()
  - Yield keyword for generating stream values
  - Handling loading state using CircularProgressIndicator
*/

import 'package:flutter/material.dart';
import 'package:project_20/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
