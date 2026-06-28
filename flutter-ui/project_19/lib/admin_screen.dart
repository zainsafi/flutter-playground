//Admin Screen

import 'package:flutter/material.dart';
import 'package:project_19/constants.dart';
import 'package:project_19/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  String name = '', email = '';

  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    name = sp.getString("name") ?? 'Null';
    email = sp.getString("email") ?? 'Null';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Admin Screen"),
        backgroundColor: Colors.blue.shade200,
      ),

      //body
      body: Column(
        children: [
          //text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              spacing: 40,
              children: [
                Text("Name: ", style: tstyle),
                Text(name, style: tstyle),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              spacing: 40,
              children: [
                Text("email: ", style: tstyle),
                Text(email, style: tstyle),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            //inkwell
            child: InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
