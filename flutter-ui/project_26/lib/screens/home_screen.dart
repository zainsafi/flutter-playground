import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;
  const HomeScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme demonstration'),
        actions: [
          IconButton(
            onPressed: () {
              widget.toggleTheme();
            },
            icon: widget.isDarkMode
                ? Icon(Icons.dark_mode)
                : Icon(Icons.light_mode),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Flutter Theme system',
              style: Theme.of(context).textTheme.displayLarge,
            ),

            SizedBox(height: 8),

            Text(
              'This screen demonstrates how ThemeData '
              'controls different Flutter widgets.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            SizedBox(height: 25),

            Text(
              'Color Scheme',
              style: Theme.of(context).textTheme.displayMedium,
            ),

            const SizedBox(height: 10),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  spacing: 15,
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.circular(15),
                        border: BoxBorder.all(style: BorderStyle.solid),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          'Primary',
                          style: TextStyle(
                            color: colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: colorScheme.secondary,
                        borderRadius: BorderRadius.circular(15),
                        border: BoxBorder.all(style: BorderStyle.solid),
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          'Secondary',
                          style: TextStyle(
                            color: colorScheme.onSecondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ICONS
            Text('Icons', style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 10),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.favorite),
                Icon(Icons.settings),
                Icon(Icons.star),
              ],
            ),

            const SizedBox(height: 25),

            // COUNTER
            Text('Buttons', style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 10),

            Text(
              '$counter',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton.icon(
                  onPressed: incrementCounter,
                  icon: const Icon(Icons.add),
                  label: const Text('Increment'),
                ),

                OutlinedButton.icon(
                  onPressed: decrementCounter,
                  icon: const Icon(Icons.remove),
                  label: const Text('Decrement'),
                ),
              ],
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: resetCounter,
              child: const Text('Reset Counter'),
            ),

            const SizedBox(height: 25),

            // CARD
            Text('Card', style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 10),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Row(
                  children: [
                    const Icon(Icons.palette),

                    const SizedBox(width: 15),

                    Expanded(
                      child: Text(
                        'This Card automatically follows '
                        'the current theme.',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),


          ],
        ),
      ),
    );
  }
}
