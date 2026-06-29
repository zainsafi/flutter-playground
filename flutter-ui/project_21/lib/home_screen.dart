import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;
  const HomeScreen({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    if (counter > 0) {
      counter--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons in flutter'),
        actions: [
          //icon button
          IconButton(
            onPressed: widget.toggleTheme,
            icon: widget.isDarkMode
                ? Icon(size: 40, Icons.dark_mode_outlined)
                : Icon(size: 40, Icons.light_mode),
          ),
        ],
      ),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    decrementCounter();
                    setState(() {});
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: '- ', style: TextStyle(fontSize: 15)),
                        TextSpan(
                          text: 'Decrement',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    incrementCounter();
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                  label: Text('Increment'),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                counter = 0;
                setState(() {});
              },
              child: Text('reset'),
            ),
          ],
        ),
      ),
    );
  }
}
