import 'package:flutter/material.dart';
import 'package:project_04/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeChanger = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Theme Screen')),
      body: RadioGroup<ThemeMode>(
        groupValue: themeChanger.themeMode,
        onChanged: (ThemeMode? value) {
          if (value != null) {
            themeChanger.setTheme(value);
          }
        },
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
              title: Text('light theme'),
              value: ThemeMode.light,
            ),
            RadioListTile<ThemeMode>(
              title: Text('dark theme'),
              value: ThemeMode.dark,
            ),
            RadioListTile<ThemeMode>(
              title: Text('system theme'),
              value: ThemeMode.system,
            ),
          ],
        ),
      ),
    );
  }
}
