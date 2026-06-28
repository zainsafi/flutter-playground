/* In this project, we will build a WhatsApp UI clone with chat list, 
   filters, archived section, and bottom navigation bar */
/* Custom Widgets, BottomNavigationBar, ListView, ListTile, CircleAvatar,
   Row, Column, Container, SizedBox, Spacer, Padding, TextField,
   SingleChildScrollView, AppBar, Icon, IconButton, AssetImage,
   Border, BorderRadius, BoxDecoration, Text, Scaffold */

import 'package:flutter/material.dart';
import 'package:project_06/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
