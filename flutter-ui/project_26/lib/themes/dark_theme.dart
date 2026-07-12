import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.dark,
    ),

    // scaffold theme (dark teal background instead of light teal)
    scaffoldBackgroundColor: const Color(0xFF121E1C),

    // appBar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1A2C29),
      foregroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),

    // textTheme (bright text colors for dark surface)
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
      ),
      displaySmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
      ),
    ),

    // textButtonTheme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.tealAccent),
    ),

    // iconTheme
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        iconSize: 20,
        backgroundColor: Colors.teal.shade800,
        foregroundColor: Colors.white,
      ),
    ),

    // card theme
    cardTheme: CardThemeData(
      elevation: 10,
      color: const Color(0xFF1A2C29),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // TEXT FIELD
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E2F2C),

      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.teal.shade700),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.tealAccent, width: 2),
      ),

      prefixIconColor: Colors.tealAccent,
    ),

    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.tealAccent;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(Colors.black),
    ),

    radioTheme: RadioThemeData(
      fillColor: WidgetStateColor.resolveWith((value) {
        if (value.contains(WidgetState.selected)) {
          return Colors.tealAccent;
        }
        return Colors.white70;
      }),
      overlayColor: const WidgetStatePropertyAll(Colors.redAccent),
      splashRadius: 2,
      side: WidgetStateBorderSide.resolveWith((value) {
        if (value.contains(WidgetState.selected)) {
          return const BorderSide(color: Colors.tealAccent, width: 2);
        }
        return const BorderSide(color: Colors.white54, width: 0.7);
      }),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(Colors.tealAccent),
      trackColor: WidgetStateProperty.all(Colors.teal.shade900),
      trackOutlineColor: WidgetStateProperty.all(Colors.teal.shade700),
    ),

    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.tealAccent,
      inactiveTrackColor: Colors.teal.shade900,
      thumbColor: Colors.tealAccent,
    ),

    // NAVIGATION BAR
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xFF162522),
      indicatorColor: Colors.teal.shade800,
      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(fontWeight: FontWeight.w600, color: Colors.white70),
      ),
    ),

    // DIALOG
    dialogTheme: DialogThemeData(
      backgroundColor: const Color(0xFF1A2C29),
      contentTextStyle: const TextStyle(fontSize: 10, color: Colors.white70),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actionsPadding: const EdgeInsets.all(8),
    ),
  );
}
