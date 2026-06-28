/*
  In this project, we will build a simple Lottery App that generates a random 
  number and checks if the user wins or loses.

  Concepts covered:
  - Random number generation
  - setState()
  - Ternary operator
  - Conditional UI
  - FloatingActionButton
*/

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
          title: Text(
            "Lottery App",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          // leadingWidth: 155, used when  the text is taken in leading
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lottery Number is 8",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Center(
              // ternary operator to check condition
              child: x == 8
                  ? Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withValues(alpha: 0.2),
                      ),
                      child: Column(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.workspace_premium,
                            color: Colors.amber.shade800,
                            size: 50,
                          ),
                          Text(
                            "Congratulations...  \nYou have Won the lottery",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withValues(alpha: 0.2),
                      ),
                      child: Column(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.warning, color: Colors.red, size: 50),
                          Text(
                            "Better Luck Next Time \nYour Number is $x\nTry Again....",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {});
          },
          child: Icon(Icons.refresh_rounded),
        ),
      ),
    );
  }
}
