import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int selectedIndex = 0;

  void showThemeDialogue() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Theme information',
            style: TextTheme.of(context).displayMedium,
          ),
          content: Text(
            'This dialog is also styled by '
            'the current ThemeData.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (selectedIndex == 0) ? Text('Home') : Text('Settings'),
      ),

      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (selectedIndex == 0)
                ? Column(
                    spacing: 4,
                    children: [
                      Icon(Icons.home, size: 80),
                      Text(
                        'Home',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Icon(Icons.settings, size: 80),
                      Text(
                        'Settings',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showThemeDialogue();
                });
              },
              child: Text('Show Dialog'),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: selectedIndex,
      //   onTap: (value) {
      //     setState(() {
      //       selectedIndex = value;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(
      //       label: 'Settings',
      //       icon: Icon(Icons.settings),
      //     ),
      //   ],
      // ),

      /////////////////////////////////////////////
      ///             OR Modern way
      /////////////////////////////////////////////
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
