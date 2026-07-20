import 'package:flutter/material.dart';
import 'package:project_02/models/note_model.dart';

class NoteProvider with ChangeNotifier {
  List<NoteModel> notes = [];

  void addNote(NoteModel note) {
    notes.add(note);
    notifyListeners();
  }

  void removeNote(NoteModel note) {
    notes.remove(note);
    notifyListeners();
  }
}
