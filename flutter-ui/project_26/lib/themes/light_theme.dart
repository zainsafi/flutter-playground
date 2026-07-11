import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.light,
    ),

    // scaffold them
    scaffoldBackgroundColor: Colors.teal.shade200,

    // appBar theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.teal.shade300,
      foregroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),

    //textTheme
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    ),

    // textButtonTheme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.teal),
    ),

    // iconTheme
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(iconSize: 20, backgroundColor: Colors.teal),
    ),

    //card theme
    cardTheme: CardThemeData(
      elevation: 10,
      color: Colors.teal,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // TEXT FIELD
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.teal.shade100,

      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.teal, width: 2),
      ),

      prefixIconColor: Colors.teal,
    ),

    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.teal.shade500;
        }
        return Colors.transparent;
      }),
    ),

    radioTheme: RadioThemeData(
      fillColor: WidgetStateColor.resolveWith((value) {
        if (value.contains(WidgetState.selected)) {
          return Colors.teal;
        }
        return Colors.black;
      }),
      overlayColor: WidgetStatePropertyAll(Colors.red),
      splashRadius: 2,
      side: WidgetStateBorderSide.resolveWith((value) {
        if (value.contains(WidgetState.selected)) {
          return BorderSide(color: Colors.teal, width: 2);
        }
        return BorderSide(width: 0.7);
      }),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(Colors.teal),
      trackColor: WidgetStateProperty.all(Colors.teal.shade100),
      trackOutlineColor: WidgetStateProperty.all(Colors.teal),
    ),

    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.teal,
      inactiveTrackColor: Colors.teal.shade100,
      thumbColor: Colors.teal,
    ),

    // NAVIGATION BAR
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.teal.shade100,

      indicatorColor: Colors.teal,

      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),

    // DIALOG
    dialogTheme: DialogThemeData(
      contentTextStyle: TextStyle(
        fontSize: 10,color: Colors.black
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actionsPadding: EdgeInsets.all(8)
    ),
  );
}
