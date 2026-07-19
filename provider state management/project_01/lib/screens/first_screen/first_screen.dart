import 'package:flutter/material.dart';
import 'package:project_01/providers/first_screen/first_provider.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('provider'),
        actions: [
          Consumer<FirstProvider>(
            builder: (context, provider, child) {
              return Switch(
                value: provider.isDark,
                onChanged: (value) {
                  provider.toggleTheme(value);
                },
              );
            },
          ),
        ],
      ),

      body: Center(
        child: Consumer<FirstProvider>(
          builder: (context, provider, child) {
            return Text(
              provider.counter.toString(),
              style: TextTheme.of(context).displayLarge,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<FirstProvider>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
