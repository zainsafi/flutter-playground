import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 30, 182, 86),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.camera_alt_outlined),
            ),
            PopupMenuButton(
              color: Colors.white,
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              tooltip: "More Options",
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(value: "1", child: Text("New group")),
                PopupMenuItem(value: "2", child: Text("New community")),
                PopupMenuItem(value: "3", child: Text("Broadcast lists")),
                PopupMenuItem(value: "4", child: Text("Linked devices")),
                PopupMenuItem(value: "5", child: Text("Starred")),
                PopupMenuItem(value: "6", child: Text("Read all")),
                PopupMenuItem(value: "7", child: Text("Settings")),
              ],
            ),
          ],

          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            indicatorColor: Colors.grey.shade100,
            indicatorPadding: EdgeInsetsGeometry.only(bottom: 14),
            labelColor: Colors.green,

            // indicator: BoxDecoration(
            //   color: Colors.grey,
            //   borderRadius: BorderRadius.circular(20),
            // ),
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            isScrollable: true,
            dividerColor: Colors.transparent,
            dividerHeight: 1,
            tabs: [
              Tab(child: Text("All")),
              Tab(child: Text("Unread")),
              Tab(child: Text("Favorites")),
              Tab(child: Text("Groups")),
              Tab(child: Text("Study groups")),
              Tab(
                child: Icon(Icons.add),
                // Text(
                //   "+",
                //   style: TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.w400,
                //   ),
                // ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person),
                  ),
                  title: Text("Munir Ahmad"),
                  subtitle: Text("Walaka? Dagha sha shi kna"),
                  trailing: Text("9:00 PM"),
                );
              },
            ),

            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person_3),
                  ),
                  title: Text("Shams ur Rehman"),
                  subtitle: Text("Chalo zain bhai Shaadi krthe hai.."),
                  trailing: Text("12:00 AM"),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person_2_sharp),
                  ),
                  title: Text("Rashid mohmmand"),
                  subtitle: Text("Zain ta safi ye?"),
                  trailing: Text("5:00 PM"),
                );
              },
            ),
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person),
                  ),
                  title: Text("Frndzzzzz..."),
                  subtitle: Text("We have a party on Monday.Be Ready..."),
                  trailing: Text("5:00 PM"),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.groups),
                  ),
                  title: Text("Airmagadon"),
                  subtitle: Text("New AI Tool is comming..."),
                  trailing: Text("10:00 PM"),
                );
              },
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Your Own Tab",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Icon(Icons.add_circle_outlined, size: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
