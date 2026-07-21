import 'package:flutter/material.dart';

class Provider2 with ChangeNotifier {
  int count = 20;

  void decrementCount() {
    if (count >= 1) {
      count--;
    } else {
      count = 20;
    }
    notifyListeners();
  }
}
