import 'package:flutter/material.dart';
import 'package:project_06/archived/archived_view.dart';
import 'package:project_06/bottom_bar/bottom_bar.dart';
import 'package:project_06/chats/chat_view.dart';
import 'package:project_06/filter_row/filter_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(
                color: const Color.fromARGB(255, 10, 172, 16),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined),
                    hintText: "Ask Meta AI Or Search",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(style: BorderStyle.none),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 237, 237, 237),
                    contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                  ),
                ),
              ),
              // SizedBox(height: 10),
              FilterRow(),
              // SizedBox(height: 10),
              ArchivedView(),
              ChatView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
