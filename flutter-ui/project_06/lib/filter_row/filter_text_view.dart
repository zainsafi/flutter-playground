import 'package:flutter/material.dart';

class FilterTextView extends StatelessWidget {
  final String label;
  const FilterTextView({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      margin: EdgeInsets.symmetric(vertical: 9, horizontal: 6),
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(label, style: TextStyle(fontSize: 18)),
    );
  }
}
