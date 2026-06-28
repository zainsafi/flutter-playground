// simple Flutter app demonstrating basic widgets, layout, and app icons.
// Shows MaterialApp, Scaffold, AppBar, Center/Text, and BottomAppBar usage.
// generate icons throught app icon generator website

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 191, 218, 231),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Welcome To My First App"),
        ),
        body: Center(
          child: Text(
            "Zain Ul Islam",
            style: TextStyle(
              color: Colors.teal,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey,
          child: Text("I am bottom navigation bar"),
        ),
      ),
    ),
  );
}
