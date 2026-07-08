import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  const HomeScreen({super.key, required this.toggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme kColors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        // you can also change the color but let it decided by the colorscheme
        // backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Home screen',
          // style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        iconTheme: IconThemeData(
          // color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: kColors.primary,
              child: Center(
                child: Text(
                  'Primary',
                  style: TextStyle(color: kColors.onPrimary),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: kColors.secondary,
              child: Center(
                child: Text(
                  'Secondary',
                  style: TextStyle(color: kColors.onSecondary),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: kColors.primaryContainer,
              child: Center(
                child: Text(
                  'Primary Container',
                  style: TextStyle(color: kColors.onPrimaryContainer),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: kColors.tertiary,
              child: Center(
                child: Text(
                  'Tertiary',
                  style: TextStyle(color: kColors.onTertiary),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Button')),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.toggleTheme();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
