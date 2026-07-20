import 'package:flutter/material.dart';
import 'package:project_02/models/note_model.dart';
import 'package:project_02/providers/note_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: Text('My Notes'),
      ),
      body: Consumer<NoteProvider>(
        builder: (context, provider, child) {
          return ListView(
            children: [
              for (NoteModel note in provider.notes)
                ListTile(
                  isThreeLine: true,
                  shape: Border(
                    bottom: BorderSide.merge(
                      BorderSide(
                        width: 0.5,
                        style: BorderStyle.solid,
                        color: Colors.teal,
                      ),
                      BorderSide(
                        width: 0.5,
                        style: BorderStyle.solid,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  tileColor: Colors.teal.shade200,
                  title: Text(note.name),
                  subtitle: Text(note.desc),
                  trailing: IconButton(
                    onPressed: () {
                      provider.removeNote(note);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.teal,
        mini: true,
        backgroundColor: Colors.teal.shade300,
        onPressed: () {
          Navigator.pushNamed(context, 'addScreen');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
