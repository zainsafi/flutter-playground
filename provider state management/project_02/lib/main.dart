import 'package:flutter/material.dart';
import 'package:project_02/providers/note_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_02/screens/add_screen.dart';
import 'package:project_02/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          'addScreen': (context) => AddScreen(),
        },
      ),
    );
  }
}
