import 'package:flutter/material.dart';
import 'package:project_19/admin_screen.dart';
import 'package:project_19/student_screen.dart';
import 'package:project_19/teacher_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> usertype = ["Admin", "Teacher", "Student"];
  String? selected;

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        backgroundColor: Colors.blue.shade200,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(hintText: "Email"),
            ),
            TextFormField(
              controller: passwordcontroller,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(hintText: "password"),
            ),
            //If you don't want the underline wrap the dropdown button
            // with DropdownButtonHideUnderline(child: child)
            DropdownButton<String>(
              isExpanded: true,
              value: selected,
              hint: Text("Select UserType"),
              items: usertype
                  .map(
                    (e) => DropdownMenuItem<String>(value: e, child: Text(e)),
                  )
                  .toList(),
              onChanged: (v) {
                setState(() {
                  selected = v;
                });
              },
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () async {
                //here i just practiced future function and call the abc future function
                // abc();

                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('name', namecontroller.text.toString());
                sp.setString('email', emailcontroller.text.toString());
                sp.setString('type', selected.toString());
                sp.setBool('islogin', true);

                if (selected == "Admin") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AdminScreen();
                      },
                    ),
                  );
                } else if (selected == "Teacher") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TeacherScreen();
                      },
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StudentScreen();
                      },
                    ),
                  );
                }

                //here i just practice sharedpreferences
                // SharedPreferences sp = await SharedPreferences.getInstance();
                // sp.setString('name', "Zain Ul Islam");
                // sp.setInt('rollno', 231326);
                // sp.setString('email', "zain@gmail.com");

                // print(sp.getString('name'));
                // print(sp.getInt('rollno'));
                // print(sp.getString('email'));

                // print(sp.remove('email'));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> abc() async {
  //   await Future.delayed(Duration(seconds: 3));
  //   print("name");
  // }
}
