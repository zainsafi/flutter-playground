import 'package:flutter/material.dart';
import 'package:project_06/filter_row/filter_text_view.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SizedBox(
        height: 52,
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 15),
          children: [
            FilterTextView(label: "All"),
            FilterTextView(label: "Unread"),
            FilterTextView(label: "Favourites"),
            FilterTextView(label: "Groups"),
            FilterTextView(label: "Add"),
          ],
        ),
      ),
    );
  }
}
