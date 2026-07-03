import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    // COLOR SCHEME
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.light,
    ),

    // SCAFFOLD
    scaffoldBackgroundColor: Colors.grey[50],

    // APP BAR
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      elevation: 30,
      centerTitle: true,

      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    // ICONS
    iconTheme: const IconThemeData(color: Colors.deepPurple, size: 24),

    // TEXT
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),

      headlineSmall: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),

      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),

      bodyLarge: TextStyle(fontSize: 16),

      bodyMedium: TextStyle(fontSize: 14),
    ),

    // ELEVATED BUTTON
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,

        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),

    // OUTLINED BUTTON
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.deepPurple,

        side: const BorderSide(color: Colors.deepPurple, width: 1.5),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),

    // TEXT BUTTON
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.deepPurple),
    ),

    // FLOATING ACTION BUTTON
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),

    // TEXT FIELD
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,

      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
      ),

      prefixIconColor: Colors.deepPurple,
    ),

    // CARD
    cardTheme: CardThemeData(
      elevation: 3,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),

    // CHECKBOX
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.deepPurple;
        }

        return Colors.transparent;
      }),
    ),

    // SWITCH
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.deepPurple;
        }

        return Colors.grey;
      }),
    ),

    // SLIDER
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.deepPurple,
      inactiveTrackColor: Colors.deepPurple.shade100,
      thumbColor: Colors.deepPurple,
    ),

    // NAVIGATION BAR
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.white,

      indicatorColor: Colors.deepPurple.shade100,

      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),

    // DIALOG
    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
