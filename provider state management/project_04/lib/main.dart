// Multi provider example
// This app has two screen one in increment a number
// and the other has a slider controlling container colors

import 'package:flutter/material.dart';
import 'package:project_04/providers/count_provider.dart';
import 'package:project_04/providers/favourite_provider.dart';
import 'package:project_04/providers/slider_provider.dart';
import 'package:project_04/providers/theme_provider.dart';
import 'package:project_04/screens/count_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider()),
        ChangeNotifierProvider(create: (context) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Builder(
        builder: (context) {
          final ThemeProvider themeProvider = Provider.of<ThemeProvider>(
            context,
          );

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            themeMode: themeProvider.themeMode,
            darkTheme: ThemeData.dark(),
            home: CountScreen(),
          );
        },
      ),
    );
  }
}
