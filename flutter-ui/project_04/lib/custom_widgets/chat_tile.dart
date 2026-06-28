import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String? time;
  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: CircleAvatar(),
        title: Padding(padding: EdgeInsets.only(left: 20), child: Text(name)),
        subtitle: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(message),
        ),
        trailing: Text(time ?? ""),
      ),
    );
  }
}
