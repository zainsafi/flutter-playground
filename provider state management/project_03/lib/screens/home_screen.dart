import 'package:flutter/material.dart';
import 'package:project_03/providers/provider1.dart';
import 'package:project_03/providers/provider2.dart';
import 'package:project_03/providers/provider3.dart';
import 'package:project_03/screens/next_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('multi providers')),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            Consumer<Provider1>(
              builder: (context, provider, child) {
                return Text(
                  provider.count.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Provider1>(
                  context,
                  listen: false,
                ).incremmentCount();
              },
              child: Text('counter1 +'),
            ),

            Consumer<Provider2>(
              builder: (context, value, child) {
                return Text(
                  value.count.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Provider2>(context, listen: false).decrementCount();
              },
              child: Text('counter2 -'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeNotifierProvider(
                      create: (context) => Provider3(),
                      child: NextScreen(),
                    ),
                  ),
                );
              },
              child: Text('Next Screen', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
