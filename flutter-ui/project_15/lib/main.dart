/*
  In this project, we will build a login form with multiple input fields 
  and custom decorations.
  Concepts covered:
  - TextFormField customization (hintText, labelText, prefixIcon, suffixIcon)
  - InputDecoration styling (enabledBorder, focusedBorder, fillColor)
  - SingleChildScrollView with padding
  - CircleAvatar
  - Using icons from FontAwesomeFlutter package
  - some properties of TextFormField are used just for understanding
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset:
            true, //by default true so we use single child scroll view
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //CircleAvatar
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 70),
                ),
              ),

              //Text
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              //TextFieldForm 1
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: TextFormField(
                  // readOnly: true,
                  // enabled: false,
                  keyboardType: TextInputType.name,
                  keyboardAppearance: Brightness.dark,
                  cursorHeight: 25,
                  cursorColor: Colors.blue,
                  // showCursor: false,
                  minLines: 1,
                  maxLines: 2,

                  // By default expands is false. It requires minLines and
                  // maxLines to be set to null, and it requires the parent widget to
                  // enforce a strict height constraint so wrap inside a size box or contianer to
                  // it some fixed height.
                  expands: false,
                  autofocus: true,
                  maxLength: 100,

                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: TextStyle(color: Colors.blue, fontSize: 15),

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    // suffixIcon: Icon(Icons.email),
                    // hint: Text("UserName", style: TextStyle(color: Colors.green)),
                    hintText: "UserName",
                    hintStyle: TextStyle(color: Colors.green),
                    // label: Text("UserName"),
                    labelText: "UserName",
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 10),
                    filled: true,
                    fillColor: Colors.grey.shade100,

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),

              //TextFieldForm 2
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                child: TextFormField(
                  // readOnly: true,
                  // enabled: true,
                  keyboardType: TextInputType.emailAddress,
                  keyboardAppearance: Brightness.dark,
                  cursorHeight: 25,
                  cursorColor: Colors.deepOrange,
                  // showCursor: false,
                  minLines: 1,
                  maxLines: 2,
                  expands: false,
                  autofocus: true,
                  maxLength: 40,
                  maxLengthEnforcement: MaxLengthEnforcement.none,

                  style: TextStyle(color: Colors.blue, fontSize: 15),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email_outlined),
                    // suffixIcon: Icon(Icons.email),
                    // hint: Text("Email", style: TextStyle(color: Colors.green)),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.green),
                    // label: Text("UserName"),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 10),
                    filled: true,
                    fillColor: Colors.grey.shade100,

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                ),
              ),

              //TextFieldForm 3
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  keyboardAppearance: Brightness.dark,
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.green),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 10),
                    filled: true,
                    fillColor: Colors.grey.shade100,

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),

                  // onChanged: (value) {
                  //   print(value);
                  // },
                ),
              ),

              //icons
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 25,
                children: [
                  // Custom Google-style icon
                  // Container(
                  //   alignment: Alignment.center,
                  //   height: 37,
                  //   width: 37,
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue.shade100,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),

                  // Inside the Container, we can display either:
                  // 1. Text("G") to mimic Google's logo
                  // 2. Or an Icon widget instead of Text for a proper icon
                  //   child: Text(
                  //     "G",
                  //     style: TextStyle(
                  //       color: Colors.green.shade800,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.blueAccent,
                    size: 30,
                  ),

                  Icon(
                    Icons.facebook_outlined,
                    color: Color(0xff4285F4),
                    size: 40,
                  ),
                  Icon(
                    FontAwesomeIcons.squareLinkedin,
                    color: Color(0xff0A66C2),
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
