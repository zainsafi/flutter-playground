import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Column(
        children: [
          ChatTile(
            name: "Asim Kamal",
            message: "Good morning 🌞",
            time: "10:00 PM",
            imagePath: "assets/asim.png",
          ),
          ChatTile(
            name: "Raheem Icp",
            message: "Study done?",
            time: "11:00 PM",
            imagePath: "assets/raheem.png",
          ),
          ChatTile(
            name: "Awais Shangla",
            message: "Call later?",
            time: "11:11 PM",
            imagePath: "assets/awais.png",
          ),
          ChatTile(
            name: "Hamza Habib",
            message: "✓ Wow! Nice Work.",
            time: "8:00 PM",
            imagePath: "assets/hamza.png",
          ),
          ChatTile(
            name: "Farhan Icp",
            message: "Zain u r the best",
            time: "10:00 AM",
            imagePath: "assets/farhan.png",
          ),
          ChatTile(
            name: "Khizar Icp",
            message: "What is the class?",
            time: "9:30 AM",
            imagePath: "assets/khizar.png",
          ),
          ChatTile(
            name: "Munir Icp",
            message: "✓ I am Working on flutter",
            time: "2/8/2025",
            imagePath: "assets/munir.png",
          ),
          ChatTile(
            name: "Rashid Icp",
            message: "Sleep well 😴",
            time: "2/8/2025",
            imagePath: "assets/rashid.png",
          ),
        ],
      ),
    );
  }
}

// you should put it into another file which is a good practice
// it's just a demonstration that you can do it in the same file aswell.
class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imagePath;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 25, backgroundImage: AssetImage(imagePath)),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message),
      trailing: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(time),
      ),
    );
  }
}
