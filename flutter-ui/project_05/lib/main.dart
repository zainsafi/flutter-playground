/* In this project, we will learn to build a chat interface with user input 
   and custom tiles without using listtile*/
/* Custom Widgets, TextField decoration, Container styling, Row, Column,
 Spacer, SizedBox, SingleChildScrollView */

import 'package:flutter/material.dart';
import 'package:project_05/profile_view.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileView()
    );
  }
}