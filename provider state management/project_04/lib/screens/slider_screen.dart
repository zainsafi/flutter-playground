import 'package:flutter/material.dart';
import 'package:project_04/providers/slider_provider.dart';
import 'package:project_04/screens/favourite_screen.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Screen'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavouriteScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 8),
              child: Icon(size: 38, Icons.navigate_next),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Consumer<SliderProvider>(
            builder: (context, provider, child) {
              return Slider(
                min: 0,
                max: 1,
                value: provider.value,

                onChanged: (newValue) {
                  provider.changeValue(newValue);
                },
              );
            },
          ),
          Consumer<SliderProvider>(
            builder: (context, provider, child) {
              return Text("value: ${provider.value.toStringAsFixed(2)}");
            },
          ),
          Consumer<SliderProvider>(
            builder: (context, provider, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.red.withValues(alpha: provider.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.blue.withValues(alpha: provider.value),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
