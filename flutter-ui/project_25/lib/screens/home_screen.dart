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

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Demonstration'),

        actions: [
          IconButton(
            onPressed: widget.toggleTheme,
            icon: Icon(widget.isDarkMode ? Icons.dark_mode : Icons.light_mode),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Flutter Theme System',
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 8),

            Text(
              'This screen demonstrates how ThemeData '
              'controls different Flutter widgets.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 25),

            // COLOR SCHEME
            Text('Color Scheme', style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 10),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,

                      child: Text(
                        'Primary',
                        style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        color: colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,

                      child: Text(
                        'Secondary',
                        style: TextStyle(
                          color: colorScheme.onSecondary,
                          fontWeight: FontWeight.bold,
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
                  onPressed: increment,
                  icon: const Icon(Icons.add),
                  label: const Text('Increment'),
                ),

                OutlinedButton.icon(
                  onPressed: decrement,
                  icon: const Icon(Icons.remove),
                  label: const Text('Decrement'),
                ),
              ],
            ),

            const SizedBox(height: 10),

            TextButton(onPressed: reset, child: const Text('Reset Counter')),

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

      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
