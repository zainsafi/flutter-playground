import 'package:flutter/material.dart';
import 'package:project_05/custom_widgets/custom_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.account_circle, color: Colors.lightGreen, size: 40),
        titleTextStyle: TextStyle(color: Colors.black45),
        title: Text("Whatsapp"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                hint: Text("Enter Username"),
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.check),
              ),
            ),
            CustomTile(
              name: "Zain Ul islam",
              message: "Where are you?",
              time: "3:00 PM",
            ),
            CustomTile(
              name: "Hamza Habib Khan",
              message: "Call me later",
              time: "5:00 PM",
            ),
            CustomTile(
              name: "Atif",
              message: "I am going to sleep.",
              time: "10:00 PM",
            ),
            CustomTile(
              name: "Muhammad Farhan",
              message: "Studying...",
              time: "3:00 PM",
            ),
            CustomTile(
              name: "Zain Ul islam",
              message: "Where are you?",
              time: "3:00 PM",
            ),
            CustomTile(
              name: "Hamza Habib Khan",
              message: "Call me later",
              time: "5:00 PM",
            ),
            CustomTile(
              name: "Atif",
              message: "I am gonna to sleep?",
              time: "10:00 PM",
            ),
            CustomTile(
              name: "Muhammad Farhan",
              message: "Studying...",
              time: "3:00 PM",
            ),
            CustomTile(
              name: "Zain Ul islam",
              message: "Where are you?",
              time: "3:00 PM",
            ),
            CustomTile(
              name: "Hamza Habib Khan",
              message: "Call me later",
              time: "5:00 PM",
            ),
            CustomTile(
              name: "Atif",
              message: "I am gonna to sleep?",
              time: "10:00 PM",
            ),
            CustomTile(
              name: "Muhammad Farhan",
              message: "Studying...",
              time: "3:00 PM",
            ),
          ],
        ),
      ),
    );
  }
}
