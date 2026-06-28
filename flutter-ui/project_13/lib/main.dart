/*
  In this project, we will explore different properties of the Container widget 
  by designing a styled box with custom layout and decoration.

  concepts covered:
  - Container properties (height, width, padding, margin)
  - BoxDecoration for styling (color, border, borderRadius)
  - BoxShadow for shadow effects
  - DecorationImage for background image
  - Transform (rotation using Matrix4)
  - Border customization (different radius for each side)
*/

// Top widgets in flutter
// 1. Container widget.   2. ListTile widget            3. circularAvatar widget
// 4. stack widget        5. listViewbuilder widget     6. TextFormField widget
// 7. sizedBox widget     8. Divider Widget             9. Padding and Align widget

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.withValues(alpha: 0.2),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Container Properties"),
        ),
        body: Container(
          height: 250,
          width: 250,
          padding: EdgeInsets.only(left: 25, top: 100),
          margin: EdgeInsets.only(left: 120, top: 150),
          transform: Matrix4.rotationZ(0.2),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            // borderRadius: BorderRadius.circular(10),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(15),
            ),
            border: Border.all(color: Colors.black, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade400,
                blurRadius: 50,
                spreadRadius: 5,
                // blurStyle: BlurStyle.outer,
              ),
            ],

            image: DecorationImage(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1537973379379-537685edf2c7?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=2340",
              ),
              fit: BoxFit.fill,
              opacity: 0.3,
            ),
            // shape: BoxShape.circle,
          ),
          child: Text(
            "I am container",
            style: TextStyle(
              color: Colors.black.withAlpha(200),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
