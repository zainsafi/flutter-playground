/*
  In this project, we will build a simple counter app with add and reset 
  functionality using StatefulWidget and setState for state management.
  Concepts covered:
  - setState()
  - Row, Column
  - ElevatedButton
  - Padding, SizedBox
*/

import 'package:flutter/material.dart';
import 'package:project_07/counter_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterView());
  }
}



