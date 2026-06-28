/*
  In this project, we will build a Beautiful Login UI screen with email and password 
  input fields using Flutter layout widgets.
  Concepts covered:
  - TextFormField
  - InputDecoration
  - Prefix/Suffix Icons
  - Container styling
  - Row, Column
  - Padding, SizedBox
  - SafeArea
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 13,
                  children: [
                    Image(
                      image: AssetImage("assets/image/logo.png"),
                      height: 55,
                      width: 55,
                      alignment: Alignment.topLeft,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 0.1,
                      children: [
                        Text(
                          "Maintenance",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Rubik Medium",
                            color: Color(0xff2D3142),
                          ),
                        ),
                        Text(
                          "Box",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffF9703B),
                            fontFamily: "Rubik Medium",
                          ),
                          // textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Rubik Medium",
                    color: Color(0xff2D3142),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Lorem ipsum dolor sit amet.\nconsectetur adipising elit",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Rubik Regular",
                    color: Color(0xff4c5980),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 20,
                    right: 20,
                    bottom: 5,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF8F9FA),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontFamily: "Rubik Regular",
                        color: Color(0xff323F4B),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xff323F4B),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 2,
                    left: 20,
                    right: 20,
                    bottom: 5,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF8F9FA),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFamily: "Rubik Regular",
                        color: Color(0xff323F4B),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_open_outlined,
                        color: Color(0xff323F4B),
                      ),
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: "Rubik Medium",
                      color: Color(0xff4c5980),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Container(
                    width: 315,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffF9703B),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Rubik Regular",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Rubik Regular",
                        color: Color(0xff4c5980),
                      ),
                    ),
                    Text(
                      "Sign UP",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Rubik Medium",
                        color: Color(0xffF9703B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
