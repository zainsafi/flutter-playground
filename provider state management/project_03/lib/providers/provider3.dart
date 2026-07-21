import 'package:flutter/material.dart';

class Provider3 with ChangeNotifier {
  int count = 0;

  void incrementByTwo() {
    count += 2;
    notifyListeners();
  }
}
