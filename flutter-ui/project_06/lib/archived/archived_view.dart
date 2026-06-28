import 'package:flutter/material.dart';

class ArchivedView extends StatelessWidget {
  const ArchivedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 2),
      child: Container(
        color: Colors.blue,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 32,
          children: [
            Icon(
              Icons.archive_outlined,
              size: 32,
              color: const Color.fromARGB(255, 95, 95, 95),
            ),
            Text(
              "Archived",
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 47, 47, 47),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
