import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<String> items = ["Drawer And Bottom Navigation Bar", "setting,account"];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.teal.shade200,
      appBar: AppBar(
        leading: Center(
          child: Text(
            '🥰',
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        title: Text(items[index], style: TextStyle(fontSize: 15)),
        centerTitle: true,
        backgroundColor: Colors.teal.shade300,
        actions: [
          IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),

      endDrawer: Drawer(
        child: Container(
          color: Colors.teal.shade300,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.teal.shade300),
                accountName: Text(
                  "Zain Ul Islam",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                accountEmail: Text(
                  "inayatkhanzhgi@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),

                currentAccountPictureSize: Size.square(70),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.pink,
                  child: Icon(Icons.flutter_dash, size: 70),
                ),
              ),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
              ListTile(leading: Icon(Icons.info), title: Text('About')),
              ListTile(leading: Icon(Icons.help), title: Text('Help')),
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),

      body: Center(
        child: Icon(Icons.favorite_sharp, size: 100, color: Colors.red),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        backgroundColor: Colors.teal.shade300,
        selectedIconTheme: IconThemeData(size: 32),

        items: [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'setting', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(
            label: 'account',
            icon: Icon(Icons.account_circle_rounded),
          ),
        ],
      ),
    );
  }
}
