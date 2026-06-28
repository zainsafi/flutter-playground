/*
  In this project, we will explore Stack layout, Divider styling, and RichText 
  by creating layered UI elements and custom styled text.

  Concepts covered:
  - Stack & Positioned
  - RichText & TextSpan
  - Divider & VerticalDivider
  - Widget layering
  - Alignment inside stack
*/

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
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent.shade100,
          title: RichText(
            text: TextSpan(
              // text: "Stack,",
              // style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              //   fontSize: 20,
              //   fontWeight: FontWeight.bold,
              //   color: Colors.blue,
              // ),
              // Each TextSpan can have its own style.
              // Using separate styles here instead of inheriting from parent for better control.
              children: [
                TextSpan(
                  text: "Stack,",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "Divider",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: " And ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "RichText",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.yellow.shade100,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 4,
                  left: 10,
                  child: Text(
                    "Box 1: InnerMost Box",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 280,
                  width: 280,
                  color: Colors.green,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Box 2: Middle Box",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(height: 200, width: 200, color: Colors.red),
                Text(
                  "Box 3: OuterMost Box ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 30,
              thickness: 15,
              color: Colors.black,
              radius: BorderRadius.circular(25),
              indent: 15,
              endIndent: 15,
            ),
            Divider(
              height: 30,
              thickness: 15,
              color: Colors.black,
              radius: BorderRadius.circular(25),
              indent: 40,
              endIndent: 40,
            ),
            Divider(
              height: 30,
              thickness: 15,
              color: Colors.black,
              radius: BorderRadius.circular(25),
              indent: 65,
              endIndent: 65,
            ),
            Divider(
              height: 30,
              thickness: 15,
              color: Colors.black,
              radius: BorderRadius.circular(25),
              indent: 90,
              endIndent: 90,
            ),
            Divider(
              height: 30,
              thickness: 15,
              color: Colors.black,
              radius: BorderRadius.circular(25),
              indent: 115,
              endIndent: 115,
            ),
            Divider(
              height: 30,
              thickness: 15,
              color: Colors.black,
              radius: BorderRadius.circular(25),
              indent: 140,
              endIndent: 140,
            ),
            Divider(
              height: 30,
              thickness: 15,
              color: Colors.black,
              radius: BorderRadius.circular(25),
              indent: 180,
              endIndent: 180,
            ),
            SizedBox(
              height: 25,
              child: VerticalDivider(
                thickness: 5,
                color: Colors.black,
                radius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
