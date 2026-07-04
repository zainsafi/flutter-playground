import 'package:flutter/material.dart';

class DarkTheme {
  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // COLOR SCHEME
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ),

    // SCAFFOLD
    scaffoldBackgroundColor: const Color(0xFF121212),

    // APP BAR
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      foregroundColor: Colors.white,
      elevation: 2,
      centerTitle: true,

      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    // ICONS
    iconTheme: const IconThemeData(color: Colors.deepPurpleAccent, size: 24),

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
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,

        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),

    // OUTLINED BUTTON
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.deepPurpleAccent,

        side: const BorderSide(color: Colors.deepPurpleAccent, width: 1.5),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),

    // TEXT BUTTON
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.deepPurpleAccent),
    ),

    // FLOATING ACTION BUTTON
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.white,
    ),

    // TEXT FIELD
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E1E1E),

      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.deepPurpleAccent, width: 2),
      ),

      prefixIconColor: Colors.deepPurpleAccent,
    ),

    // CARD
    cardTheme: CardThemeData(
      color: const Color(0xFF1E1E1E),
      elevation: 3,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),

    // CHECKBOX
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.deepPurpleAccent;
        }

        return Colors.transparent;
      }),
    ),

    // SWITCH
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.deepPurpleAccent;
        }

        return Colors.grey;
      }),
    ),

    // SLIDER
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.deepPurpleAccent,
      inactiveTrackColor: Colors.deepPurple.shade800,
      thumbColor: Colors.deepPurpleAccent,
    ),

    // NAVIGATION BAR
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xFF1E1E1E),

      indicatorColor: Colors.deepPurple.shade800,

      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),

    // DIALOG
    dialogTheme: DialogThemeData(
      backgroundColor: const Color(0xFF1E1E1E),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
