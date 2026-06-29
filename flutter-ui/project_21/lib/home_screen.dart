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
  bool centerTitle = true;
  bool smallCounterText = true;
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
        centerTitle: centerTitle,
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
            // text button
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                smallCounterText = !smallCounterText;
                setState(() {});
              },
              child: Text('click me'),
            ),
            smallCounterText
                ? Text(
                    counter.toString(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  )
                : Text(
                    counter.toString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // elevated button
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

                // elevated button with icon
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    alignment: Alignment.center,
                    iconAlignment: IconAlignment.end,
                    iconColor: Colors.yellow,
                    iconSize: 20,
                  ),

                  onPressed: () {
                    incrementCounter();
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                  label: Text('Increment'),
                ),
              ],
            ),

            // outline button
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

      // floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          centerTitle = !centerTitle;
          setState(() {});
        },
        child: Icon(Icons.swipe),
      ),
    );
  }
}
