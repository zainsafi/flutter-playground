// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_19/admin_screen.dart';
import 'package:project_19/login_screen.dart';
import 'package:project_19/student_screen.dart';
import 'package:project_19/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    super.initState();

    //practicing here
    // Timer(Duration(seconds: 5), () {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) {
    //         return LoginScreen();
    //       },
    //     ),
    //   );
    // });

    islogin();
  }

  void islogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool islogin = sp.getBool('islogin') ?? false;
    String usertype = sp.getString('type') ?? '';
    if (islogin) {
      if (usertype == "Admin") {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdminScreen()),
          );
        });
      } else if (usertype == "Teacher") {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TeacherScreen()),
          );
        });
      } else {
        Timer(Duration(seconds: 3), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StudentScreen()),
          );
        });
      }
    } else {
      Timer(Duration(seconds: 3), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.asset(
        height: double.infinity,
        fit: BoxFit.fitHeight,
        "assets/test_image.jpg",
      ),
    );
  }
}
