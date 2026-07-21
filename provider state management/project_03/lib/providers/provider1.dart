import 'package:flutter/material.dart';

class Provider1 with ChangeNotifier {
  int count = 0;

  void incremmentCount() {
    count++;
    notifyListeners();
  }
}
