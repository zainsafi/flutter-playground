import 'package:flutter/material.dart';
import 'package:project_03/providers/provider1.dart';
import 'package:project_03/providers/provider2.dart';
import 'package:project_03/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Provider1()),
          ChangeNotifierProvider(create: (context) => Provider2()),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
