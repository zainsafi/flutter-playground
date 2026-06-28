import 'package:flutter/material.dart';
import 'package:project_16/screen_one.dart';
import 'package:project_16/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "homes_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff764abc),
        title: Text("Navigation"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(margin: EdgeInsets.all(1), child: Text("Account")),
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
              ),
              currentAccountPictureSize: const Size(75, 75),
              accountName: Text(
                "Zain Ul Islam",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("zain@gmail.com"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => Navigator.pushNamed((context), HomeScreen.id),
            ),
            ListTile(
              leading: Icon(Icons.icecream_rounded),
              title: Text("Screen 1"),
              onTap: () {
                Navigator.pushNamed((context), ScreenOne.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.watch_later_rounded),
              title: Text("Screen 2"),
              onTap: () {
                Navigator.pushNamed((context), ScreenTwo.id);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenOne.id);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ScreenOne()),
                // );
              },
              style: ButtonStyle(
                textStyle: WidgetStatePropertyAll(
                  TextStyle(fontSize: 23, fontWeight: FontWeight(1000)),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.grey.shade300),
                foregroundColor: WidgetStateProperty.all(Colors.deepPurple),
              ),
              child: Text(
                "Go To Screen 1",
                // style: TextStyle(
                //   color: Colors.black,
                //   fontSize: 20,
                //   fontWeight: FontWeight.bold,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
