/* In this project, we will build a friend list manager app with add, edit, 
   and delete functionality using dialogs and list view */
/* The widget that we will cover here are: 
      * Expanded, Wrap, ListView.builder,TextField, TextEditingController, setState,  
        ListTile, IconButton, ElevatedButton, showDialog, AlertDialog,  InputDecoration,
        OutlineInputBorder, BorderRadius, BorderSide, WidgetStateProperty, RoundedRectangleBorder, */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  TextEditingController friendListController = TextEditingController();
  TextEditingController updateItemController = TextEditingController();
  List friendList = [
    "Zain",
    "Ahmad",
    "Asim",
    "Mustafa",
    "shahfahad",
    "Ahmad Munir",
    "Hamza",
    "Rashid",
  ];
  addItem() {
    setState(() {
      friendList.insert(0, friendListController.text);
      friendListController.clear();
    });
  }

  removeItem({removeItem}) {
    setState(() {
      friendList.removeAt(removeItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: friendListController,
          decoration: InputDecoration(
            hintText: ("Enter Username"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              addItem();
            },
            child: Text("Add Name"),
          ),
        ],
      ),
      body: Column(
        // To use expanded we have removed single child scroll view.
        children: [
          Container(
            height: 200,
            width: 400,
            color: Colors.red,
            child: Center(
              child: Text(
                "I'm just a red container… why are you \nstaring at me like that? 🙈😳",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true, // first method to make the screen scollable
              // but due to it the whole screen will scroll.
              // second method is to use expanded.
              // physics: NeverScrollableScrollPhysics(),
              itemCount: friendList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 2),
                  child: ListTile(
                    tileColor: Colors.green,
                    title: Text(friendList[index]),
                    trailing: Wrap(
                      //instead of using row use wrap bcz row & list tile takes available
                      //width which will cause overflow.you can wrap the row with size box and
                      //give it some width but it is not recommended.
                      children: [
                        IconButton(
                          onPressed: () {
                            updateItemController.text = friendList[index];
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Update Value"),
                                  content: TextField(
                                    controller: updateItemController,
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                              Colors.grey,
                                            ),
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadiusGeometry.circular(
                                                  20,
                                                ),
                                            side: BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          friendList[index] =
                                              updateItemController.text;
                                        });
                                        updateItemController.clear();
                                        Navigator.pop(context);
                                      },

                                      child: Text(
                                        "Update",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            removeItem(removeItem: index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
