import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  const CustomTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
      margin: EdgeInsets.only(top: 2, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blueGrey,
          width: 2,
          style: BorderStyle.solid,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            spreadRadius: 1,
            offset: Offset(0, 1),
            blurRadius: 0.5,
            blurStyle: BlurStyle.outer,
          ),
        ],
        color: Colors.green,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            // backgroundColor: Colors.red,
            foregroundImage: AssetImage("assets/bird.jpg"),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(message),
            ],
          ),
          Spacer(),
          Text(time),
        ],
      ),
    );
  }
}
