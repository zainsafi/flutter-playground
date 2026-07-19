// provider state management in dart
// watch readme for understanding
// provider can be used on both the stateless and statefull class

import 'package:flutter/material.dart';
import 'package:project_01/providers/first_screen/first_provider.dart';
// import 'package:project_01/providers/home/home_provider.dart';
import 'package:project_01/screens/first_screen/first_screen.dart';
// import 'package:project_01/screens/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FirstProvider(),
      child: Consumer<FirstProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),

            themeMode: provider.isDark ? ThemeMode.dark : ThemeMode.light,
            home: FirstScreen(),
          );
        },
      ),
    );
  }
}
