import 'package:flutter/material.dart';
import 'package:project_03/providers/provider3.dart';
import 'package:provider/provider.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Screen')),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Provider3>(
              builder: (context, value, child) {
                return Text(
                  value.count.toString(),
                  style: Theme.of(context).textTheme.displayLarge,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Provider3>(context, listen: false).incrementByTwo();
                
              },
              child: Text('Increment +'),
            ),
          ],
        ),
      ),
    );
  }
}
