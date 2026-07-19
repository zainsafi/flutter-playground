import 'package:flutter/material.dart';
import 'package:project_01/providers/home/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('provider')),
      body: Center(
        child: Consumer<HomeProvider>(
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
          Provider.of<HomeProvider>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
